.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :catch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 128
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onInputBufferAvailable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onOutputBufferAvailable"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    .line 139
    :cond_0
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 140
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v4, "onOutputBufferAvailable BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 144
    :goto_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 145
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$402(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;

    invoke-direct {v5, v4, p3, v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 154
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {v4, v2, p3, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 158
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    const-string v2, "onOutputBufferAvailable releaseOutputBuffer"

    invoke-static {p3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 161
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutputBufferAvailable exception"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v1, :cond_4

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    .line 167
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->access$100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
