.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLapseMuxer"
.end annotation


# static fields
.field private static final MS_TO_NANO:J = 0x3e8L

.field private static final TIME_FRAME_GAP:J = 0x80e8L


# instance fields
.field private mEOSCommit:Z

.field private mFrameCount:J

.field private mLastTimeUs:J

.field private mLastWriteTime:J

.field private final mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStartTime:J

.field private mStarted:Z

.field private mStopWithException:Z

.field private final mTimeLapse:I

.field private mTrack:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 488
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const/4 p1, 0x0

    .line 489
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    .line 490
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    .line 493
    iget-object v0, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 496
    :cond_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 498
    :goto_0
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    .line 499
    iget p1, p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)J
    .locals 2

    .line 477
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    return-wide v0
.end method


# virtual methods
.method declared-synchronized addTrack(Landroid/media/MediaFormat;)V
    .locals 1

    monitor-enter p0

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 12

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 505
    :cond_0
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mEOSCommit:Z

    .line 506
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v1, v5

    .line 508
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    .line 509
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v5

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v8, v5

    const-wide/32 v10, 0x3938700

    mul-long/2addr v8, v10

    goto :goto_0

    :cond_1
    move-wide v8, v6

    :goto_0
    cmp-long v1, v1, v8

    if-lez v1, :cond_2

    cmp-long v1, v8, v6

    if-lez v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    sub-long/2addr v1, v5

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    int-to-long v5, v5

    const-wide/32 v7, 0x80e8

    mul-long/2addr v5, v7

    const-wide/16 v9, 0x7530

    sub-long/2addr v5, v9

    cmp-long v1, v1, v5

    if-gez v1, :cond_3

    if-eqz p3, :cond_4

    .line 517
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastWriteTime:J

    .line 518
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    iput-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 521
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSampleData start, mTimeLapse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isEOS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTrack:I

    invoke-virtual {v3, v4, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 523
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSampleData end, cost : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 525
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v1, "writeSampleData error, please check."

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p1, 0x1

    .line 527
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 530
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 532
    :goto_1
    iget-wide p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J

    if-nez p3, :cond_4

    .line 533
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-wide p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    .line 535
    :cond_4
    monitor-exit v0

    return-void

    .line 504
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 535
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method declared-synchronized prepared()V
    .locals 1

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onPrepared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOrientationHint(I)V
    .locals 1

    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 568
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    const v1, 0x186a0

    if-ne v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 574
    :try_start_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStarted()V

    .line 577
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    .line 578
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mLastTimeUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 8

    .line 543
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStarted:Z

    const/4 v1, -0x1

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 547
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 549
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 550
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mTimeLapse:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x3938700

    mul-long/2addr v4, v6

    :cond_1
    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 552
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mFrameCount:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    goto :goto_0

    .line 554
    :cond_4
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mStopWithException:Z

    if-eqz v2, :cond_5

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V

    goto :goto_0

    .line 557
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {v2, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 560
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "TimeLapseMuxer stop"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->mListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;

    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onStopped(I)V

    :goto_0
    return-void
.end method
