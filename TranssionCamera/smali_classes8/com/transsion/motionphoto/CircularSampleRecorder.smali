.class public Lcom/transsion/motionphoto/CircularSampleRecorder;
.super Ljava/lang/Object;
.source "CircularSampleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;
    }
.end annotation


# instance fields
.field private final bufferDurationMs:J

.field private volatile recording:Z

.field private final retainLock:Ljava/lang/Object;

.field private final retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final samples:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    .line 36
    iput-wide p1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->bufferDurationMs:J

    .line 37
    return-void
.end method

.method private trimStorage()V
    .registers 7

    .line 86
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 87
    if-nez v0, :cond_b

    return-void

    .line 88
    :cond_b
    iget-object v0, v0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->bufferDurationMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 89
    nop

    .line 90
    iget-object v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_2c

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 95
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 96
    if-eqz v2, :cond_4d

    iget-object v3, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3f

    goto :goto_4d

    .line 97
    :cond_3f
    iget-object v2, v2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_4d

    iget-object v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    .line 99
    goto :goto_2c

    .line 100
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public addSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 11

    .line 72
    iget-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    if-nez v0, :cond_5

    return-void

    .line 73
    :cond_5
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 75
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 80
    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 81
    iget-object p1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance p2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    invoke-direct {p2, v0, v2}, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;-><init>([BLandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 82
    invoke-direct {p0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->trimStorage()V

    .line 83
    return-void
.end method

.method public clear()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 113
    return-void
.end method

.method public getLatestTimestamp()J
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    .line 104
    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    goto :goto_11

    :cond_d
    iget-object v0, v0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_11
    return-wide v0
.end method

.method public isRecording()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    return v0
.end method

.method public release()V
    .registers 2

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    .line 117
    return-void
.end method

.method public releaseRetention(J)V
    .registers 7

    .line 63
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    .line 66
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_24

    iget-object v1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 67
    :cond_24
    iget-object v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :goto_36
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public retainFrom(J)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object v1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 58
    iget-object v2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    if-nez v1, :cond_19

    goto :goto_1e

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p2, v1

    :goto_1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public snapshot()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public startRecording()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->samples:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 45
    iget-object v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_8
    iget-object v1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainedStarts:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    .line 47
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    .line 49
    return-void

    .line 47
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public stopRecording()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/motionphoto/CircularSampleRecorder;->recording:Z

    .line 53
    return-void
.end method
