/*
 * Ported from PhotonCamera (https://github.com/bjzhou/PhotonCamera), Apache-2.0.
*/

package com.transsion.motionphoto;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.util.Log;

import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class PreviewFrameEncoder {
    private static final String TAG = "PreviewFrameEncoder";
    private static final String MIME = MediaFormat.MIMETYPE_VIDEO_AVC;
    private static final int I_FRAME_INTERVAL = 1;
    private static final int MAX_PIXELS = 1920 * 1088;
    private static final int MAX_FAILURES = 5;

    private static final class RawFrame {
        final byte[] nv12;
        final int width;
        final int height;
        final long timestampUs;

        RawFrame(byte[] nv12, int width, int height, long timestampUs) {
            this.nv12 = nv12;
            this.width = width;
            this.height = height;
            this.timestampUs = timestampUs;
        }
    }

    private final int frameRateHz;
    private final int bitRate;
    private final CircularSampleRecorder circularBuffer;

    private volatile MediaCodec encoder;
    private volatile MediaFormat videoFormat;
    private int encWidth = 0;
    private int encHeight = 0;
    private volatile boolean warnedBadSize = false;
    private volatile boolean gaveUp = false;

    private final AtomicBoolean running = new AtomicBoolean(false);
    private final LinkedBlockingQueue<RawFrame> frameQueue = new LinkedBlockingQueue<RawFrame>(8);
    private Thread worker;

    public PreviewFrameEncoder(long bufferDurationMs, long postCaptureDurationMs, int frameRateHz, int bitRate) {
        this.frameRateHz = frameRateHz;
        this.bitRate = bitRate;
        this.circularBuffer = new CircularSampleRecorder(bufferDurationMs + postCaptureDurationMs + 4000L);
    }

    public int getEncWidth() {
        return encWidth;
    }

    public int getEncHeight() {
        return encHeight;
    }

    public synchronized void start() {
        if (gaveUp) return;
        if (running.getAndSet(true)) return;
        circularBuffer.startRecording();
        worker = new Thread(new Runnable() {
            @Override
            public void run() {
                workerLoop();
            }
        }, "MotionPhotoEncoder");
        worker.setDaemon(true);
        worker.start();
        Log.d(TAG, "started");
    }

    public synchronized void stop() {
        if (!running.getAndSet(false)) return;
        circularBuffer.stopRecording();
        frameQueue.clear();
        if (worker != null) worker.interrupt();
        worker = null;
        releaseEncoder();
        Log.d(TAG, "stopped");
    }

    public boolean isRunning() {
        return running.get();
    }

    public void onImage(Image image) {
        if (!running.get()) return;
        try {
            int w = image.getWidth();
            int h = image.getHeight();
            if (w * h > MAX_PIXELS || (w & 1) != 0 || (h & 1) != 0) {
                if (!warnedBadSize) {
                    warnedBadSize = true;
                    Log.w(TAG, "preview " + w + "x" + h + " not suitable for Motion Photo encoding, skipping frames");
                }
                return;
            }
            byte[] nv12 = yuv420888ToNv12(image);
            RawFrame frame = new RawFrame(nv12, w, h, image.getTimestamp() / 1000L);
            if (!frameQueue.offer(frame)) {
                Log.w(TAG, "frame queue full, dropping frame");
            }
        } catch (Throwable e) {
            Log.e(TAG, "onImage failed", e);
        }
    }

    public MediaFormat videoFormatOrNull() {
        return videoFormat;
    }

    public List<CircularSampleRecorder.Sample> allSamples() {
        return circularBuffer.snapshot();
    }

    public void retainFrom(long timestampUs) {
        circularBuffer.retainFrom(timestampUs);
    }

    public void releaseRetention(long timestampUs) {
        circularBuffer.releaseRetention(timestampUs);
    }

    private void workerLoop() {
        int failures = 0;
        while (running.get()) {
            RawFrame frame;
            try {
                frame = frameQueue.poll(200, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                break;
            }
            if (frame == null) continue;
            try {
                ensureEncoder(frame.width, frame.height);
                feedEncoder(frame);
                drainEncoder();
                failures = 0;
            } catch (Throwable t) {
                Log.e(TAG, "encode loop error", t);
                releaseEncoder();
                failures++;
                if (failures >= MAX_FAILURES) {
                    Log.e(TAG, "too many consecutive failures, Motion Photo encoder disabled");
                    gaveUp = true;
                    running.set(false);
                    circularBuffer.stopRecording();
                    frameQueue.clear();
                    break;
                }
            }
        }
    }

    @SuppressWarnings("deprecation")
    private void ensureEncoder(int width, int height) throws Exception {
        if (encoder != null && width == encWidth && height == encHeight) return;
        releaseEncoder();

        MediaFormat format = MediaFormat.createVideoFormat(MIME, width, height);
        format.setInteger(MediaFormat.KEY_COLOR_FORMAT,
                MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420SemiPlanar);
        format.setInteger(MediaFormat.KEY_BIT_RATE, bitRate);
        format.setInteger(MediaFormat.KEY_FRAME_RATE, frameRateHz);
        format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL);

        MediaCodec codec = MediaCodec.createEncoderByType(MIME);
        codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        codec.start();
        encoder = codec;
        encWidth = width;
        encHeight = height;
        Log.d(TAG, "encoder (re)initialised for " + width + "x" + height);
    }

    private void feedEncoder(RawFrame frame) {
        MediaCodec codec = encoder;
        if (codec == null) return;
        int index = codec.dequeueInputBuffer(10000L);
        if (index < 0) return;
        ByteBuffer buffer = codec.getInputBuffer(index);
        if (buffer == null) return;
        buffer.clear();
        if (buffer.remaining() < frame.nv12.length) {
            Log.e(TAG, "codec input buffer too small (" + buffer.remaining() + " < " + frame.nv12.length + ")");
            codec.queueInputBuffer(index, 0, 0, frame.timestampUs, 0);
            return;
        }
        buffer.put(frame.nv12);
        codec.queueInputBuffer(index, 0, frame.nv12.length, frame.timestampUs, 0);
    }

    private void drainEncoder() {
        MediaCodec codec = encoder;
        if (codec == null) return;
        MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();
        while (true) {
            int index = codec.dequeueOutputBuffer(info, 0L);
            if (index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                videoFormat = codec.getOutputFormat();
            } else if (index == MediaCodec.INFO_TRY_AGAIN_LATER) {
                return;
            } else if (index >= 0) {
                ByteBuffer out = codec.getOutputBuffer(index);
                boolean isConfig = (info.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0;
                if (out != null && info.size > 0 && !isConfig) {
                    circularBuffer.addSample(out, info);
                }
                codec.releaseOutputBuffer(index, false);
            }
        }
    }

    private void releaseEncoder() {
        MediaCodec c = encoder;
        if (c != null) {
            try { c.stop(); } catch (Throwable ignored) {}
            try { c.release(); } catch (Throwable ignored) {}
        }
        encoder = null;
        encWidth = 0;
        encHeight = 0;
    }

    private static byte[] yuv420888ToNv12(Image image) {
        int width = image.getWidth();
        int height = image.getHeight();
        byte[] out = new byte[width * height * 3 / 2];

        Image.Plane[] planes = image.getPlanes();
        Image.Plane yPlane = planes[0];
        Image.Plane uPlane = planes[1];
        Image.Plane vPlane = planes[2];

        int outPos = 0;
        ByteBuffer yBuffer = yPlane.getBuffer().duplicate();
        int yRowStride = yPlane.getRowStride();
        int yPixelStride = yPlane.getPixelStride();
        for (int row = 0; row < height; row++) {
            int pos = row * yRowStride;
            if (yPixelStride == 1) {
                yBuffer.position(pos);
                yBuffer.get(out, outPos, width);
                outPos += width;
            } else {
                for (int col = 0; col < width; col++) {
                    out[outPos++] = yBuffer.get(pos);
                    pos += yPixelStride;
                }
            }
        }

        int chromaHeight = height / 2;
        int chromaWidth = width / 2;
        ByteBuffer uBuffer = uPlane.getBuffer().duplicate();
        ByteBuffer vBuffer = vPlane.getBuffer().duplicate();
        int uRowStride = uPlane.getRowStride();
        int uPixelStride = uPlane.getPixelStride();
        int vRowStride = vPlane.getRowStride();
        int vPixelStride = vPlane.getPixelStride();

        for (int row = 0; row < chromaHeight; row++) {
            int uPos = row * uRowStride;
            int vPos = row * vRowStride;
            for (int col = 0; col < chromaWidth; col++) {
                out[outPos++] = uBuffer.get(uPos);
                out[outPos++] = vBuffer.get(vPos);
                uPos += uPixelStride;
                vPos += vPixelStride;
            }
        }
        return out;
    }
}
