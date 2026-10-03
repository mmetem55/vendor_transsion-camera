.class public Lcom/transsion/motionphoto/AudioFrameEncoder;
.super Ljava/lang/Object;
.source "AudioFrameEncoder.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final BIT_RATE:I = 0x1f400

.field private static final CHANNEL_CONFIG:I = 0xc

.field private static final MIME:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "AudioFrameEncoder"


# instance fields
.field private volatile audioFormat:Landroid/media/MediaFormat;

.field private audioRecord:Landroid/media/AudioRecord;

.field private final circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

.field private volatile encoder:Landroid/media/MediaCodec;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Lcom/transsion/motionphoto/CircularSampleRecorder;

    add-long/2addr p1, p3

    const-wide/16 p3, 0xfa0

    add-long/2addr p1, p3

    invoke-direct {v0, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;-><init>(J)V

    iput-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/motionphoto/AudioFrameEncoder;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->workerLoop()V

    return-void
.end method

.method private drainEncoder(Landroid/media/MediaCodec$BufferInfo;)V
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 140
    if-nez v0, :cond_5

    return-void

    .line 142
    :cond_5
    :goto_5
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 143
    const/4 v2, -0x2

    if-ne v1, v2, :cond_15

    .line 144
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioFormat:Landroid/media/MediaFormat;

    goto :goto_3a

    .line 145
    :cond_15
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 146
    nop

    .line 156
    return-void

    .line 147
    :cond_1a
    if-ltz v1, :cond_3a

    .line 148
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 149
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    move v3, v4

    .line 150
    :goto_2a
    if-eqz v2, :cond_37

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_37

    if-nez v3, :cond_37

    .line 151
    iget-object v3, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v3, v2, p1}, Lcom/transsion/motionphoto/CircularSampleRecorder;->addSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 153
    :cond_37
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 155
    :cond_3a
    :goto_3a
    goto :goto_5
.end method

.method private feedEncoder([BIJ)V
    .registers 12

    .line 125
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 126
    if-nez v0, :cond_5

    return-void

    .line 127
    :cond_5
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 128
    if-ltz v1, :cond_21

    .line 129
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_21

    .line 131
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 133
    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 136
    :cond_21
    return-void
.end method

.method private declared-synchronized releaseEncoder()V
    .registers 3

    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 160
    :try_start_6
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    .line 161
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception v0

    .line 162
    :goto_14
    :try_start_14
    iput-object v1, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    .line 164
    :cond_16
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_2c

    if-eqz v0, :cond_2a

    .line 165
    :try_start_1a
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_21

    :catchall_20
    move-exception v0

    .line 166
    :goto_21
    :try_start_21
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_28

    :catchall_27
    move-exception v0

    .line 167
    :goto_28
    :try_start_28
    iput-object v1, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2c

    .line 169
    :cond_2a
    monitor-exit p0

    return-void

    .line 158
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private workerLoop()V
    .registers 13

    .line 79
    const-string v0, "audio/mp4a-latm"

    const-string v1, "AudioFrameEncoder"

    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 80
    const/16 v5, 0x1000

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 83
    :try_start_14
    new-instance v6, Landroid/media/AudioRecord;

    const/16 v9, 0xc

    const/4 v10, 0x2

    const/4 v7, 0x5

    const v8, 0xac44

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v6, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    .line 85
    iget-object v3, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_39

    .line 86
    new-instance v6, Landroid/media/AudioRecord;

    const/16 v9, 0xc

    const/4 v10, 0x2

    const/4 v7, 0x1

    const v8, 0xac44

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v6, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    .line 89
    :cond_39
    iget-object v3, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_50

    .line 90
    const-string v0, "Failed to initialize AudioRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_a5

    .line 120
    invoke-direct {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseEncoder()V

    .line 92
    return-void

    .line 95
    :cond_50
    :try_start_50
    invoke-static {v0, v2, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 96
    const-string v3, "aac-profile"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    const-string v3, "bitrate"

    const v4, 0x1f400

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 98
    const-string v3, "max-input-size"

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 101
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 102
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 104
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 106
    const/16 v0, 0x800

    new-array v2, v0, [B

    .line 107
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 109
    :goto_87
    iget-object v4, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 110
    iget-object v4, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4, v2, v6, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    .line 111
    if-lez v4, :cond_a4

    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 113
    invoke-direct {p0, v2, v4, v7, v8}, Lcom/transsion/motionphoto/AudioFrameEncoder;->feedEncoder([BIJ)V

    .line 114
    invoke-direct {p0, v3}, Lcom/transsion/motionphoto/AudioFrameEncoder;->drainEncoder(Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_a4
    .catchall {:try_start_50 .. :try_end_a4} :catchall_a5

    .line 116
    :cond_a4
    goto :goto_87

    .line 117
    :catchall_a5
    move-exception v0

    .line 118
    :try_start_a6
    const-string v2, "Audio encoding loop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_b0

    .line 120
    :cond_ab
    invoke-direct {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseEncoder()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_b0
    move-exception v0

    invoke-direct {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseEncoder()V

    .line 121
    throw v0
.end method


# virtual methods
.method public allSamples()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->snapshot()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public audioFormatOrNull()Landroid/media/MediaFormat;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->audioFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public releaseRetention(J)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;->releaseRetention(J)V

    .line 76
    return-void
.end method

.method public retainFrom(J)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainFrom(J)V

    .line 72
    return-void
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_32

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    .line 37
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->startRecording()V

    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/transsion/motionphoto/AudioFrameEncoder$1;

    invoke-direct {v2, p0}, Lcom/transsion/motionphoto/AudioFrameEncoder$1;-><init>(Lcom/transsion/motionphoto/AudioFrameEncoder;)V

    const-string v3, "MotionPhotoAudioEncoder"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    .line 44
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 45
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    const-string v0, "AudioFrameEncoder"

    const-string v1, "Audio encoder started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_32

    .line 47
    monitor-exit p0

    return-void

    .line 35
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    .line 51
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->stopRecording()V

    .line 52
    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 53
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/motionphoto/AudioFrameEncoder;->worker:Ljava/lang/Thread;

    .line 54
    invoke-direct {p0}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseEncoder()V

    .line 55
    const-string v0, "AudioFrameEncoder"

    const-string v1, "Audio encoder stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_29

    .line 56
    monitor-exit p0

    return-void

    .line 49
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
