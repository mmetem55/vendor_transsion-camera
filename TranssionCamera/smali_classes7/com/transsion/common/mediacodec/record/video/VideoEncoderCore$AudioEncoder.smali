.class Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;
.super Ljava/lang/Object;
.source "VideoEncoderCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioEncoder"
.end annotation


# instance fields
.field private baseTimeStamp:J

.field private cancelFlag:Z

.field private volatile isAudioBufferRead:Z

.field private isReady:Z

.field private isRecording:Z

.field mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

.field private mReadyFence:Ljava/lang/Object;

.field private oncePauseTime:J

.field private pauseDelayTime:J

.field private pausing:Z

.field final synthetic this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;


# direct methods
.method constructor <init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)V
    .locals 2

    .line 297
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->cancelFlag:Z

    const-wide/16 v0, -0x1

    .line 300
    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->baseTimeStamp:J

    .line 303
    iput-boolean p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pausing:Z

    .line 305
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    return-void
.end method

.method private audioStep()Z
    .locals 14

    .line 412
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ltz v4, :cond_6

    .line 414
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v3}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 415
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 416
    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v5}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$200(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/AudioRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$100(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 417
    iput-boolean v10, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isAudioBufferRead:Z

    if-lez v5, :cond_6

    .line 419
    iget-wide v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->baseTimeStamp:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 420
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 421
    iget-object v8, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$300(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getAudioEffectRenderCallback()Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 423
    invoke-interface {v8, v3}, Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;->onRender(Ljava/nio/ByteBuffer;)V

    .line 425
    :cond_0
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v3}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$400(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;->getPresetationTime()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    .line 426
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TimeStampAudio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ";nanoTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";baseTimeStamp="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->baseTimeStamp:J

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";pauseDelay="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pauseDelayTime:J

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ;mIsMuteRecoder="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$500(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v3}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v7}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$500(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v11

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    iget-boolean v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    if-eqz v5, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    move v12, v0

    :goto_1
    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v12

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_4

    .line 429
    :cond_3
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v3}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v7}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$500(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v11

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    const-wide/16 v8, 0x0

    iget-boolean v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    if-eqz v5, :cond_5

    move v12, v11

    goto :goto_3

    :cond_5
    move v12, v0

    :goto_3
    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v12

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 433
    :cond_6
    :goto_4
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 436
    :cond_7
    iget-object v4, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v4}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ltz v4, :cond_a

    .line 438
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_8

    const-string v0, "VideoEncoderCore"

    const-string v1, "audio end"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-virtual {p0, v4, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v10

    .line 443
    :cond_8
    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v5}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 444
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$600(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v6, v1

    if-lez v6, :cond_9

    .line 447
    :try_start_0
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$800(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaMuxer;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v7}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$700(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v7

    invoke-virtual {v6, v7, v5, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    .line 449
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v5}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_6

    :cond_a
    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    goto/16 :goto_6

    :cond_b
    const/4 v5, -0x2

    if-ne v4, v5, :cond_d

    .line 456
    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v5}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$900(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 457
    :try_start_1
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$800(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaMuxer;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$702(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;I)I

    const-string v6, "VideoEncoderCore"

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hanmeimei audioStep mVideoTrackIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$1000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mAudioTrackIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$700(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "VideoEncoderCore"

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add audio track-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$700(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$700(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v6

    if-ltz v6, :cond_c

    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$1000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I

    move-result v6

    if-ltz v6, :cond_c

    .line 461
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$800(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaMuxer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->start()V

    .line 462
    iget-object v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->this$0:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-static {v6, v10}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->access$602(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;Z)Z

    .line 464
    :cond_c
    monitor-exit v5

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_d
    :goto_6
    if-gez v4, :cond_7

    return v11
.end method

.method private drainEncoder()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    :goto_0
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->audioStep()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 472
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 480
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleAudioPause()V
    .locals 2

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pausing:Z

    .line 395
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->oncePauseTime:J

    return-void
.end method

.method public handleAudioResume()V
    .locals 4

    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->oncePauseTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->oncePauseTime:J

    .line 401
    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pauseDelayTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pauseDelayTime:J

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pausing:Z

    return-void
.end method

.method public handleAudioStep()V
    .locals 3

    .line 364
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->cancelFlag:Z

    if-nez v0, :cond_3

    .line 365
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pausing:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 366
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->audioStep()Z

    .line 368
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->drainEncoder()V

    .line 371
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 374
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    if-eqz v0, :cond_2

    .line 375
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->drainEncoder()V

    .line 378
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleStartRecord()V
    .locals 2

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isAudioBufferRead:Z

    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->baseTimeStamp:J

    .line 359
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->handleAudioStep()V

    return-void
.end method

.method public handleStopRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isRecording:Z

    .line 407
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isAudioBufferRead:Z

    return-void
.end method

.method public isAudioBufferRead()Z
    .locals 0

    .line 325
    iget-boolean p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isAudioBufferRead:Z

    return p0
.end method

.method public pause()V
    .locals 1

    .line 344
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 349
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 311
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 312
    new-instance v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    invoke-direct {v0, p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;-><init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    .line 313
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 314
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isReady:Z

    .line 315
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 318
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 319
    :try_start_1
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isReady:Z

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    .line 321
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 316
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public startRecord()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isReady:Z

    if-nez v1, :cond_0

    const-string v1, "VideoEncoderCore"

    const-string v2, "startRecord while"

    .line 331
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 335
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public stopRecord()V
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
