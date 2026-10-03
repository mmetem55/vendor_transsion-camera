package com.transsion.motionphoto;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.media.MediaRecorder;
import android.util.Log;

import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class AudioFrameEncoder {
    private static final String TAG = "AudioFrameEncoder";
    private static final String MIME = MediaFormat.MIMETYPE_AUDIO_AAC;
    private static final int SAMPLE_RATE = 44100;
    private static final int CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_STEREO;
    private static final int AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT;
    private static final int BIT_RATE = 128000;

    private final CircularSampleRecorder circularBuffer;
    private final AtomicBoolean running = new AtomicBoolean(false);

    private volatile MediaCodec encoder;
    private volatile MediaFormat audioFormat;
    private AudioRecord audioRecord;
    private Thread worker;

    public AudioFrameEncoder(long bufferDurationMs, long postCaptureDurationMs) {
        this.circularBuffer = new CircularSampleRecorder(bufferDurationMs + postCaptureDurationMs + 4000L);
    }

    public synchronized void start() {
        if (running.getAndSet(true)) return;
        circularBuffer.startRecording();
        worker = new Thread(new Runnable() {
            @Override
            public void run() {
                workerLoop();
            }
        }, "MotionPhotoAudioEncoder");
        worker.setDaemon(true);
        worker.start();
        Log.d(TAG, "Audio encoder started");
    }

    public synchronized void stop() {
        if (!running.getAndSet(false)) return;
        circularBuffer.stopRecording();
        if (worker != null) worker.interrupt();
        worker = null;
        releaseEncoder();
        Log.d(TAG, "Audio encoder stopped");
    }

    public boolean isRunning() {
        return running.get();
    }

    public MediaFormat audioFormatOrNull() {
        return audioFormat;
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
        int minBufferSize = AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT);
        int bufferSize = Math.max(minBufferSize, 4096);

        try {
            audioRecord = new AudioRecord(MediaRecorder.AudioSource.CAMCORDER,
                    SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT, bufferSize);
            if (audioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
                audioRecord = new AudioRecord(MediaRecorder.AudioSource.MIC,
                        SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT, bufferSize);
            }
            if (audioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
                Log.e(TAG, "Failed to initialize AudioRecord");
                running.set(false);
                return;
            }

            MediaFormat format = MediaFormat.createAudioFormat(MIME, SAMPLE_RATE, 2);
            format.setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC);
            format.setInteger(MediaFormat.KEY_BIT_RATE, BIT_RATE);
            format.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, 16384);

            encoder = MediaCodec.createEncoderByType(MIME);
            encoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
            encoder.start();

            audioRecord.startRecording();

            byte[] buffer = new byte[2048];
            MediaCodec.BufferInfo info = new MediaCodec.BufferInfo();

            while (running.get()) {
                int read = audioRecord.read(buffer, 0, buffer.length);
                if (read > 0) {
                    long presentationUs = System.nanoTime() / 1000L;
                    feedEncoder(buffer, read, presentationUs);
                    drainEncoder(info);
                }
            }
        } catch (Throwable t) {
            Log.e(TAG, "Audio encoding loop error", t);
        } finally {
            releaseEncoder();
        }
    }

    private void feedEncoder(byte[] pcmData, int length, long presentationUs) {
        MediaCodec codec = encoder;
        if (codec == null) return;
        int index = codec.dequeueInputBuffer(10000L);
        if (index >= 0) {
            ByteBuffer inBuffer = codec.getInputBuffer(index);
            if (inBuffer != null) {
                inBuffer.clear();
                inBuffer.put(pcmData, 0, length);
                codec.queueInputBuffer(index, 0, length, presentationUs, 0);
            }
        }
    }

    private void drainEncoder(MediaCodec.BufferInfo info) {
        MediaCodec codec = encoder;
        if (codec == null) return;
        while (true) {
            int index = codec.dequeueOutputBuffer(info, 0L);
            if (index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                audioFormat = codec.getOutputFormat();
            } else if (index == MediaCodec.INFO_TRY_AGAIN_LATER) {
                break;
            } else if (index >= 0) {
                ByteBuffer outBuffer = codec.getOutputBuffer(index);
                boolean isConfig = (info.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0;
                if (outBuffer != null && info.size > 0 && !isConfig) {
                    circularBuffer.addSample(outBuffer, info);
                }
                codec.releaseOutputBuffer(index, false);
            }
        }
    }

    private synchronized void releaseEncoder() {
        if (audioRecord != null) {
            try { audioRecord.stop(); } catch (Throwable ignored) {}
            try { audioRecord.release(); } catch (Throwable ignored) {}
            audioRecord = null;
        }
        if (encoder != null) {
            try { encoder.stop(); } catch (Throwable ignored) {}
            try { encoder.release(); } catch (Throwable ignored) {}
            encoder = null;
        }
    }
}
