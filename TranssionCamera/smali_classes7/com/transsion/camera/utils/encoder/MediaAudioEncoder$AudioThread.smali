.class Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;
.super Ljava/lang/Thread;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/16 v0, -0x13

    .line 109
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 111
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x6400

    const/16 v3, 0x400

    const/4 v4, 0x1

    if-ge v1, v0, :cond_0

    .line 116
    div-int/2addr v0, v3

    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x2

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-static {v0}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$100(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$200()[I

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$300()[I

    move-result-object v0

    :goto_0
    array-length v2, v0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move v12, v5

    move-object v5, v11

    :goto_1
    if-ge v12, v2, :cond_4

    aget v6, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    :try_start_1
    new-instance v13, Landroid/media/AudioRecord;

    const v7, 0xac44

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v13

    move v10, v1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 124
    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 125
    invoke-virtual {v13}, Landroid/media/AudioRecord;->release()V

    .line 127
    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v6, v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v6, v5, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v11

    :cond_2
    move-object v5, v13

    goto :goto_2

    :catch_0
    move-object v5, v11

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v5, :cond_a

    .line 136
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v0, v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_9

    .line 137
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioThread:start audio recording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V

    .line 141
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v2, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v2, v1, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    :cond_5
    :goto_4
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-boolean v2, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v2, :cond_8

    .line 146
    iget-boolean v1, v1, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    if-eqz v1, :cond_6

    goto :goto_4

    .line 150
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v5, v0, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-lez v1, :cond_5

    .line 153
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-wide v6, v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 157
    :cond_7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 160
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    goto :goto_4

    .line 163
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    :try_start_4
    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    .line 166
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    :cond_9
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 169
    :catch_1
    :try_start_6
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;->this$0:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v0, p0, v4}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 171
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    .line 172
    throw p0

    .line 174
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "failed to initialize AudioRecord"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    .line 177
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AudioThread#run"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :goto_7
    invoke-static {}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "AudioThread:finished"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
