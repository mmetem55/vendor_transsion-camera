.class Lapi/natsuite/natcorder/internal/HardwareRecorder$1;
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

    .line 124
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "NatSuite"

    .line 128
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_0
    :goto_0
    const-wide/16 v2, 0x2

    .line 133
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    iget-object v2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v2}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v3, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v3}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$100(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/internal/MediaWriter;

    move-result-object v3

    iget-object v4, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v4}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iget-object v5, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v5}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lapi/natsuite/natcorder/internal/MediaWriter;->appendVideoFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 143
    iget-object v3, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v3}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 145
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NatCorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " video encoder encountered EOS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 151
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 152
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$100(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/internal/MediaWriter;

    move-result-object v0

    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-static {p0}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->access$200(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/MediaRecorder$Callback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lapi/natsuite/natcorder/internal/MediaWriter;->finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    return-void

    :catch_0
    move-exception v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NatCorder Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;->this$0:Lapi/natsuite/natcorder/internal/HardwareRecorder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed to fetch video encoder output"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
