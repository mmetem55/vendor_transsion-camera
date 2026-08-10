.class Lapi/natsuite/natcorder/internal/HardwareRecorder$2;
.super Ljava/lang/Object;
.source "HardwareRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi/natsuite/natcorder/internal/HardwareRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;


# direct methods
.method constructor <init>(Lapi/natsuite/natcorder/internal/HardwareRecorder;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "NatSuite"

    .line 160
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    const-wide/16 v4, 0x2

    .line 166
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 167
    iget-object v4, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v4}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v4, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_2

    const-wide/16 v5, 0x2710

    add-long/2addr v2, v5

    goto :goto_1

    :cond_2
    move-wide v2, v5

    :goto_1
    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 177
    iget-object v5, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v5}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$100(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/internal/MediaWriter;

    move-result-object v5

    iget-object v6, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v6}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    iget-object v7, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v7}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lapi/natsuite/natcorder/internal/MediaWriter;->appendAudioFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 178
    iget-object v5, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v5}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 180
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NatCorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " audio encoder encountered EOS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 186
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 187
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$100(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/internal/MediaWriter;

    move-result-object v0

    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {p0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$200(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/MediaRecorder$Callback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lapi/natsuite/natcorder/internal/MediaWriter;->finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    return-void

    :catch_0
    move-exception v4

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NatCorder Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed to fetch audio encoder output"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
