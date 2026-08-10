.class final Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;
.super Landroid/os/Handler;
.source "AbstractAsyncMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;-><init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->updateMuteRecoder(Landroid/os/Message;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->release(Landroid/os/Message;)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->snapShot(Landroid/os/Message;)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->storageUnmounted(Landroid/os/Message;)V

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->startMediaRecorder(Landroid/os/Message;)V

    goto :goto_0

    .line 225
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->stop(Landroid/os/Message;)V

    goto :goto_0

    .line 222
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->pauseResume(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->startStop(Landroid/os/Message;)V

    goto :goto_0

    .line 216
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->operationPrepared(Landroid/os/Message;)V

    goto :goto_0

    .line 213
    :pswitch_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->this$0:Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->configRecorder(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 203
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->access$200(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;->processMessage(Landroid/os/Message;)V

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 207
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->access$200(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end process time:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
