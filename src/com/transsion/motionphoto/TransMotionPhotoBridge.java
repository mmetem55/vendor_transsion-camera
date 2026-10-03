package com.transsion.motionphoto;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.hardware.camera2.CameraMetadata;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.ExifInterface;
import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.media.MediaScannerConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class TransMotionPhotoBridge {
    private static final String TAG = "TransMotionPhotoBridge";

    private static final String PREF_NAME = "transsion_motion_photo_prefs";
    private static final String SETTING_KEY = "key_motion_photo";

    public static volatile boolean enabled = false;

    private static final long PRE_CAPTURE_MS = 1500L;
    private static final long POST_CAPTURE_MS = 1500L;
    private static final long KEYFRAME_MARGIN_MS = 1200L;
    private static final long PREVIEW_TIMEOUT_MS = 1500L;

    private static final Object LOCK = new Object();
    private static boolean hasPending = false;
    private static long pendingShutterUs = 0L;
    private static long pendingRetainKey = 0L;
    private static int pendingRotation = -1;

    private TransMotionPhotoBridge() {}

    public static void setEnabled(boolean value) {
        enabled = value;
        Log.d(TAG, "Motion Photo status updated: enabled = " + enabled);
        saveToSharedPreferences(value ? "on" : "off");
        try {
            if (!enabled) {
                stopEncoders();
            }
        } catch (Throwable t) {
            Log.e(TAG, "Error stopping encoders", t);
        }
    }

    public static void stopEncoders() {
        try {
            Holder.HANDLER.removeCallbacks(Holder.WATCHDOG_RUNNABLE);
            if (Holder.ENCODER.isRunning()) {
                Holder.ENCODER.stop();
            }
            if (Holder.AUDIO_ENCODER.isRunning()) {
                Holder.AUDIO_ENCODER.stop();
            }
        } catch (Throwable t) {
            Log.e(TAG, "stopEncoders error", t);
        }
    }

    private static final class Holder {
        static final PreviewFrameEncoder ENCODER =
                new PreviewFrameEncoder(PRE_CAPTURE_MS, POST_CAPTURE_MS, 30, 6000000);
        static final AudioFrameEncoder AUDIO_ENCODER =
                new AudioFrameEncoder(PRE_CAPTURE_MS, POST_CAPTURE_MS);
        static final Handler HANDLER;

        static final Runnable WATCHDOG_RUNNABLE = new Runnable() {
            @Override
            public void run() {
                Log.d(TAG, "Preview broadcast stopped; microphone and encoders are being turned off.");
                stopEncoders();
            }
        };

        static {
            HandlerThread t = new HandlerThread("MotionPhotoFinalizer");
            t.start();
            HANDLER = new Handler(t.getLooper());
        }
    }

    public static void onPreviewImage(Image image) {
        try {
            if (!enabled) {
                stopEncoders();
                return;
            }

            Holder.HANDLER.removeCallbacks(Holder.WATCHDOG_RUNNABLE);
            Holder.HANDLER.postDelayed(Holder.WATCHDOG_RUNNABLE, PREVIEW_TIMEOUT_MS);

            PreviewFrameEncoder enc = Holder.ENCODER;
            if (!enc.isRunning()) enc.start();
            enc.onImage(image);

            AudioFrameEncoder audioEnc = Holder.AUDIO_ENCODER;
            if (!audioEnc.isRunning()) audioEnc.start();
        } catch (Throwable t) {
            Log.e(TAG, "onPreviewImage", t);
        }
    }

    public static void onShutterCaptured(TotalCaptureResult result) {
        try {
            if (!enabled) return;
            PreviewFrameEncoder enc = Holder.ENCODER;
            if (!enc.isRunning()) return;

            Integer intent = result.getRequest().get(CaptureRequest.CONTROL_CAPTURE_INTENT);
            if (intent != null && intent == CameraMetadata.CONTROL_CAPTURE_INTENT_PREVIEW) return;

            Long ts = result.get(CaptureResult.SENSOR_TIMESTAMP);
            if (ts == null) return;
            long shutterUs = ts / 1000L;
            long key = shutterUs - (PRE_CAPTURE_MS + KEYFRAME_MARGIN_MS) * 1000L;

            Integer reqRotation = result.getRequest().get(CaptureRequest.JPEG_ORIENTATION);
            int rotation = (reqRotation != null) ? reqRotation : -1;

            synchronized (LOCK) {
                if (hasPending) {
                    enc.releaseRetention(pendingRetainKey);
                    Holder.AUDIO_ENCODER.releaseRetention(pendingRetainKey);
                }
                enc.retainFrom(key);
                Holder.AUDIO_ENCODER.retainFrom(key);
                pendingShutterUs = shutterUs;
                pendingRetainKey = key;
                pendingRotation = rotation;
                hasPending = true;
            }
            Log.d(TAG, "shutter captured at " + shutterUs + "us (intent=" + intent + ", rotation=" + rotation + ")");
        } catch (Throwable t) {
            Log.e(TAG, "onShutterCaptured", t);
        }
    }

    public static void onJpegFileSaved(final String jpegPath) {
        try {
            if (!enabled) return;
            final long centerTs;
            final long retainKey;
            final int captureRotation;
            synchronized (LOCK) {
                if (!hasPending) {
                    Log.w(TAG, "no pending shutter, skipping Motion Photo for " + jpegPath);
                    return;
                }
                centerTs = pendingShutterUs;
                retainKey = pendingRetainKey;
                captureRotation = pendingRotation;
                hasPending = false;
            }
            final PreviewFrameEncoder enc = Holder.ENCODER;
            final AudioFrameEncoder audioEnc = Holder.AUDIO_ENCODER;
            Log.d(TAG, "jpeg saved, finalizing in " + POST_CAPTURE_MS + "ms: " + jpegPath);
            Holder.HANDLER.postDelayed(new Runnable() {
                @Override
                public void run() {
                    try {
                        finalizeMotionPhoto(enc, audioEnc, jpegPath, centerTs, captureRotation);
                    } catch (Throwable t) {
                        Log.e(TAG, "finalize failed", t);
                    } finally {
                        enc.releaseRetention(retainKey);
                        audioEnc.releaseRetention(retainKey);
                    }
                }
            }, POST_CAPTURE_MS);
        } catch (Throwable t) {
            Log.e(TAG, "onJpegFileSaved", t);
        }
    }

    private static boolean isKey(CircularSampleRecorder.Sample s) {
        return (s.info.flags & MediaCodec.BUFFER_FLAG_KEY_FRAME) != 0;
    }

    private static void finalizeMotionPhoto(PreviewFrameEncoder enc, AudioFrameEncoder audioEnc,
                                               String jpegPath, long centerTs, int captureRotation)
            throws Exception {
        MediaFormat videoFormat = enc.videoFormatOrNull();
        if (videoFormat == null) {
            Log.w(TAG, "encoder has no output format yet, skipping");
            return;
        }

        List<CircularSampleRecorder.Sample> allVideo = enc.allSamples();
        Collections.sort(allVideo, new Comparator<CircularSampleRecorder.Sample>() {
            @Override
            public int compare(CircularSampleRecorder.Sample a, CircularSampleRecorder.Sample b) {
                long x = a.info.presentationTimeUs;
                long y = b.info.presentationTimeUs;
                return x < y ? -1 : (x == y ? 0 : 1);
            }
        });

        long windowStart = centerTs - PRE_CAPTURE_MS * 1000L;
        long windowEnd = centerTs + POST_CAPTURE_MS * 1000L;

        int startIdx = -1;
        for (int i = 0; i < allVideo.size(); i++) {
            if (allVideo.get(i).info.presentationTimeUs >= windowStart) {
                startIdx = i;
                break;
            }
        }
        if (startIdx < 0) {
            Log.w(TAG, "no buffered video samples around shutter timestamp, skipping");
            return;
        }

        int k = startIdx;
        while (k > 0 && !isKey(allVideo.get(k))) k--;
        if (!isKey(allVideo.get(k))) {
            k = startIdx;
            while (k < allVideo.size() && !isKey(allVideo.get(k))) k++;
        }
        if (k >= allVideo.size()) {
            Log.w(TAG, "no keyframe in buffer, skipping");
            return;
        }

        List<CircularSampleRecorder.Sample> videoSamples = new ArrayList<CircularSampleRecorder.Sample>();
        for (int i = k; i < allVideo.size(); i++) {
            CircularSampleRecorder.Sample s = allVideo.get(i);
            if (s.info.presentationTimeUs <= windowEnd) videoSamples.add(s);
        }
        if (videoSamples.size() < 2) {
            Log.w(TAG, "too few video samples (" + videoSamples.size() + "), skipping");
            return;
        }

        MediaFormat audioFormat = audioEnc.audioFormatOrNull();
        List<CircularSampleRecorder.Sample> audioSamples = new ArrayList<CircularSampleRecorder.Sample>();
        if (audioFormat != null) {
            List<CircularSampleRecorder.Sample> allAudio = audioEnc.allSamples();
            for (CircularSampleRecorder.Sample s : allAudio) {
                if (s.info.presentationTimeUs >= windowStart && s.info.presentationTimeUs <= windowEnd) {
                    audioSamples.add(s);
                }
            }
        }

        File jpegFile = new File(jpegPath);
        File dir = jpegFile.getParentFile();
        if (dir == null) return;
        String name = jpegFile.getName();
        int dot = name.lastIndexOf('.');
        String stem = dot > 0 ? name.substring(0, dot) : name;
        File tempVideo = new File(dir, "." + stem + "_mp.tmp.mp4");
        File tempOutput = new File(dir, "." + stem + "_mp.tmp.jpg");

        int rotationDegrees = determineRotation(jpegPath, captureRotation, enc.getEncWidth(), enc.getEncHeight());

        try {
            muxToMp4(tempVideo, videoFormat, videoSamples, audioFormat, audioSamples, rotationDegrees);

            long presentationUs = centerTs - videoSamples.get(0).info.presentationTimeUs;
            if (presentationUs < 0L) presentationUs = 0L;
            boolean ok = MotionPhotoWriter.write(jpegPath, tempVideo.getAbsolutePath(),
                    tempOutput.getAbsolutePath(), presentationUs);
            if (ok && tempOutput.exists() && tempOutput.length() > jpegFile.length()) {
                if (tempOutput.renameTo(jpegFile)) {
                    rescan(jpegFile);
                    Log.i(TAG, "wrote Motion Photo with audio for " + jpegPath +
                            " (" + videoSamples.size() + " video samples, " + audioSamples.size() + " audio samples)");
                } else {
                    Log.e(TAG, "failed to rename finished Motion Photo into place");
                }
            } else {
                Log.e(TAG, "MotionPhotoWriter.write failed for " + jpegPath);
            }
        } finally {
            tempVideo.delete();
            tempOutput.delete();
        }
    }

    private static int determineRotation(String jpegPath, int captureRotation, int encWidth, int encHeight) {
        int rotation = -1;

        if (captureRotation == 0 || captureRotation == 90 || captureRotation == 180 || captureRotation == 270) {
            rotation = captureRotation;
        }

        if (rotation == -1) {
            int exifRot = readRotationDegrees(jpegPath);
            if (exifRot != 0) {
                rotation = exifRot;
            }
        }

        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(jpegPath, options);
            int jpegW = options.outWidth;
            int jpegH = options.outHeight;

            boolean previewIsLandscape = encWidth > encHeight;
            boolean jpegIsPortrait = jpegH > jpegW;

            if (previewIsLandscape && jpegIsPortrait) {
                if (rotation == 0 || rotation == -1) {
                    rotation = 90;
                }
            } else if (!previewIsLandscape && !jpegIsPortrait) {
                if (rotation == -1) {
                    rotation = 0;
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "Failed to decode JPEG bounds for rotation validation", t);
        }

        if (rotation == -1) rotation = 0;
        return ((rotation % 360) + 360) % 360;
    }

    private static void muxToMp4(File outputFile, MediaFormat videoFormat,
                                 List<CircularSampleRecorder.Sample> videoSamples,
                                 MediaFormat audioFormat,
                                 List<CircularSampleRecorder.Sample> audioSamples,
                                 int rotationDegrees) throws Exception {
        MediaMuxer muxer = new MediaMuxer(outputFile.getAbsolutePath(),
                MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
        try {
            int videoTrack = muxer.addTrack(videoFormat);
            int audioTrack = -1;
            if (audioFormat != null && !audioSamples.isEmpty()) {
                audioTrack = muxer.addTrack(audioFormat);
            }

            muxer.setOrientationHint(rotationDegrees);
            muxer.start();

            long baseUs = videoSamples.get(0).info.presentationTimeUs;

            for (int i = 0; i < videoSamples.size(); i++) {
                CircularSampleRecorder.Sample sample = videoSamples.get(i);
                MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
                info.set(0, sample.info.size, sample.info.presentationTimeUs - baseUs, sample.info.flags);
                muxer.writeSampleData(videoTrack, ByteBuffer.wrap(sample.data), info);
            }

            if (audioTrack >= 0) {
                for (int i = 0; i < audioSamples.size(); i++) {
                    CircularSampleRecorder.Sample sample = audioSamples.get(i);
                    long relUs = sample.info.presentationTimeUs - baseUs;
                    if (relUs >= 0) {
                        MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
                        info.set(0, sample.info.size, relUs, sample.info.flags);
                        muxer.writeSampleData(audioTrack, ByteBuffer.wrap(sample.data), info);
                    }
                }
            }

            muxer.stop();
        } finally {
            try { muxer.release(); } catch (Throwable ignored) {}
        }
    }

    private static int readRotationDegrees(String jpegPath) {
        try {
            ExifInterface exif = new ExifInterface(jpegPath);
            int orientation = exif.getAttributeInt(
                    ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL);
            switch (orientation) {
                case ExifInterface.ORIENTATION_ROTATE_90:
                case ExifInterface.ORIENTATION_TRANSPOSE:
                    return 90;
                case ExifInterface.ORIENTATION_ROTATE_180:
                case ExifInterface.ORIENTATION_FLIP_VERTICAL:
                    return 180;
                case ExifInterface.ORIENTATION_ROTATE_270:
                case ExifInterface.ORIENTATION_TRANSVERSE:
                    return 270;
                default:
                    return 0;
            }
        } catch (Throwable t) {
            Log.w(TAG, "could not read JPEG EXIF orientation for " + jpegPath + ", assuming 0", t);
            return 0;
        }
    }

    private static void rescan(File file) {
        Context context = currentApplication();
        if (context == null) return;
        MediaScannerConnection.scanFile(context, new String[]{file.getAbsolutePath()},
                new String[]{"image/jpeg"}, null);
    }

    public static Context currentApplication() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object app = cls.getMethod("currentApplication").invoke(null);
            return (app instanceof Application) ? (Application) app : null;
        } catch (Throwable e) {
            Log.w(TAG, "could not resolve current application context", e);
            return null;
        }
    }

    private static void saveToSharedPreferences(String value) {
        try {
            Context ctx = currentApplication();
            if (ctx != null) {
                SharedPreferences sp = ctx.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
                sp.edit().putString(SETTING_KEY, value).commit();
            }
        } catch (Throwable t) {
            Log.w(TAG, "saveToSharedPreferences error", t);
        }
    }
}
