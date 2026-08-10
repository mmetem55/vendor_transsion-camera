.class Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;
.super Landroid/os/Handler;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 275
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] ModeChange START, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 283
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x32

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 287
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z

    .line 304
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[processMessage] ModeChange END, process time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 291
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 292
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "ModeChange, mModeChangeLock wait error."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 295
    monitor-exit v2

    return-void

    .line 297
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
