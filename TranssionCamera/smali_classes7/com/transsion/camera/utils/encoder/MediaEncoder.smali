.class public abstract Lcom/transsion/camera/utils/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;,
        Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected mFirstFrameTime:J

.field private mFrameIndex:J

.field protected final mFrameTimeStamp:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected final mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field private mOncePauseTime:J

.field protected volatile mPresentationTime:J

.field private mRequestDrain:I

.field protected volatile mRequestPause:Z

.field protected volatile mRequestStop:Z

.field protected volatile mTotalPauseTime:J

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V
    .locals 6

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 144
    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const-wide/16 v1, 0x0

    .line 160
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    const-wide/16 v3, -0x1

    .line 161
    iput-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 162
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 163
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 164
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 411
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 173
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 174
    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addEncoder(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V

    .line 175
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 176
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameTimeStamp:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;

    .line 177
    iput-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 178
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 179
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 180
    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 181
    monitor-enter v0

    .line 183
    :try_start_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 185
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaExtractorWrapper is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaDecoderListener is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected drain()V
    .locals 11

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-nez v1, :cond_1

    .line 31
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "muxer is unexpectedly null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 36
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_d

    .line 40
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 44
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    goto/16 :goto_3

    :cond_3
    const/4 v5, -0x3

    if-ne v4, v5, :cond_4

    .line 49
    sget-object v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    if-ne v4, v5, :cond_7

    .line 53
    sget-object v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-nez v4, :cond_6

    .line 63
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 64
    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v4, 0x1

    .line 65
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 66
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->start()Z

    move-result v4

    if-nez v4, :cond_5

    .line 67
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->enCoderLock()V

    .line 69
    :cond_5
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v4, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V

    goto :goto_0

    .line 59
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "format changed twice"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    if-gez v4, :cond_8

    .line 72
    sget-object v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drain:unexpected result from encoder#dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_8
    aget-object v5, v0, v4

    if-eqz v5, :cond_c

    .line 79
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 84
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "drain:BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 88
    :cond_9
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_b

    .line 91
    :try_start_1
    iget-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_a

    .line 95
    iget-wide v7, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    .line 98
    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    invoke-virtual {v1, v3, v5, v6}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 99
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    move v3, v2

    goto :goto_1

    .line 93
    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "drain:muxer hasn\'t started"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v4

    move v3, v2

    goto :goto_2

    .line 102
    :cond_b
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 103
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 105
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    goto :goto_3

    .line 77
    :cond_c
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was null"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v4

    .line 110
    :goto_2
    sget-object v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " recording error."

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    .line 112
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    :goto_3
    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 363
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 369
    aget-object v0, v0, v5

    .line 370
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    if-gtz p2, :cond_3

    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    .line 378
    sget-object p1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "send BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 383
    :cond_3
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v0

    return v2

    .line 198
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p0, 0x0

    .line 199
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method pauseRecording()V
    .locals 5

    .line 274
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 276
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 277
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected release()V
    .locals 4

    .line 317
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 323
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 332
    :try_start_1
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    .line 336
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V

    .line 339
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 344
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method resumeRecording()V
    .locals 6

    .line 283
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 285
    :try_start_0
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 287
    iget-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeRecording, once pausetime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", total pausetime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 290
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 221
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 223
    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    .line 224
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->signalEndOfInputStream()V

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 242
    :catch_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :goto_2
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Encoder thread exiting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drain frameCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iput-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 251
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    .line 252
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 253
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 244
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 224
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method protected signalEndOfInputStream()V
    .locals 4

    .line 348
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method startRecording()V
    .locals 2

    .line 265
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startDecoding"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 267
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    const/4 v1, 0x0

    .line 268
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stopRecording()V
    .locals 2

    .line 297
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 303
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit v0

    return-void

    .line 300
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
