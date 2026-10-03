/*
 * Ported from PhotonCamera (https://github.com/bjzhou/PhotonCamera), Apache-2.0.
*/
package com.transsion.motionphoto;

import android.media.MediaCodec;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentSkipListMap;

public class CircularSampleRecorder {

    public static final class Sample {
        public final byte[] data;
        public final MediaCodec.BufferInfo info;

        Sample(byte[] data, MediaCodec.BufferInfo info) {
            this.data = data;
            this.info = info;
        }
    }

    private final long bufferDurationMs;
    private final ConcurrentLinkedDeque<Sample> samples = new ConcurrentLinkedDeque<Sample>();
    private final ConcurrentSkipListMap<Long, Integer> retainedStarts = new ConcurrentSkipListMap<Long, Integer>();
    private final Object retainLock = new Object();
    private volatile boolean recording = false;

    public CircularSampleRecorder(long bufferDurationMs) {
        this.bufferDurationMs = bufferDurationMs;
    }

    public boolean isRecording() {
        return recording;
    }

    public void startRecording() {
        samples.clear();
        synchronized (retainLock) {
            retainedStarts.clear();
        }
        recording = true;
    }

    public void stopRecording() {
        recording = false;
    }

    public void retainFrom(long timestampUs) {
        synchronized (retainLock) {
            Integer cur = retainedStarts.get(timestampUs);
            retainedStarts.put(timestampUs, cur == null ? 1 : cur + 1);
        }
    }

    public void releaseRetention(long timestampUs) {
        synchronized (retainLock) {
            Integer cur = retainedStarts.get(timestampUs);
            if (cur == null) return;
            if (cur <= 1) retainedStarts.remove(timestampUs);
            else retainedStarts.put(timestampUs, cur - 1);
        }
    }

    public void addSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo info) {
        if (!recording) return;
        byte[] data = new byte[info.size];
        ByteBuffer dup = byteBuffer.duplicate();
        dup.position(info.offset);
        dup.limit(info.offset + info.size);
        dup.get(data);

        MediaCodec.BufferInfo sampleInfo = new MediaCodec.BufferInfo();
        sampleInfo.set(0, info.size, info.presentationTimeUs, info.flags);
        samples.addLast(new Sample(data, sampleInfo));
        trimStorage();
    }

    private void trimStorage() {
        Sample last = samples.peekLast();
        if (last == null) return;
        long rolling = last.info.presentationTimeUs - bufferDurationMs * 1000L;
        long threshold = rolling;
        Map.Entry<Long, Integer> firstRetained = retainedStarts.firstEntry();
        if (firstRetained != null) {
            threshold = Math.min(firstRetained.getKey(), rolling);
        }
        while (true) {
            Sample first = samples.peekFirst();
            if (first == null || first == samples.peekLast()) break;
            if (first.info.presentationTimeUs < threshold) samples.pollFirst();
            else break;
        }
    }

    public long getLatestTimestamp() {
        Sample last = samples.peekLast();
        return last == null ? -1L : last.info.presentationTimeUs;
    }

    public List<Sample> snapshot() {
        return new ArrayList<Sample>(samples);
    }

    public void clear() {
        samples.clear();
    }

    public void release() {
        recording = false;
    }
}
