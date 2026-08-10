.class abstract Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;
.super Ljava/lang/Object;
.source "AbstractAsyncMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;
    }
.end annotation


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mVideoHandle:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "configRecorder"

    const-string v3, "operationPrepared"

    const-string v4, "startStop"

    const-string v5, "pauseResume"

    const-string v6, "stop"

    const-string v7, "startMediaRecorder"

    const-string v8, "storageUnMounted"

    const-string v9, "snapShot"

    const-string v10, "releaseRecorder"

    const-string v11, "updateMuteRecoder"

    .line 45
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->getCommand(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCommand(I)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->COMMANDS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage wrong command\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private release()V
    .locals 1

    const/16 v0, 0x8

    .line 117
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method private removeMessages(I)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private sendMessage(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 188
    sget-object p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mVideoHandle is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private waitDone()V
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v1, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$1;-><init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Ljava/lang/Object;)V

    .line 260
    monitor-enter v0

    .line 261
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x3e8

    .line 264
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catch_0
    :try_start_2
    sget-object p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public configRecorder(Landroid/media/CamcorderProfile;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method protected abstract configRecorder(Landroid/os/Message;)V
.end method

.method public init()V
    .locals 3

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 149
    new-instance v1, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$VideoHandle;-><init>(Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    return-void
.end method

.method public leave(ZZZ)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->shouldConsumerStopCommand()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x2

    .line 94
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->removeMessages(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(IIILjava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->waitDone()V

    :cond_1
    return p1
.end method

.method public operationPrepared()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract operationPrepared(Landroid/os/Message;)V
.end method

.method public pauseResume()V
    .locals 1

    const/4 v0, 0x3

    .line 85
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract pauseResume(Landroid/os/Message;)V
.end method

.method protected abstract release(Landroid/os/Message;)V
.end method

.method protected removeStartStopMessages()Z
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 162
    sget-object p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "removeStartStopMessages mVideoHandle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x2

    .line 165
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method protected abstract shouldConsumerStopCommand()Z
.end method

.method protected abstract snapShot(Landroid/os/Message;)V
.end method

.method startMediaRecorder()V
    .locals 1

    const/4 v0, 0x5

    .line 103
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startMediaRecorder(Landroid/os/Message;)V
.end method

.method public startStop()V
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startStop(Landroid/os/Message;)V
.end method

.method protected abstract stop(Landroid/os/Message;)V
.end method

.method public storageUnMount()V
    .locals 1

    const/4 v0, 0x6

    .line 108
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract storageUnmounted(Landroid/os/Message;)V
.end method

.method public unInit()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->release()V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->mVideoHandle:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method protected abstract updateMuteRecoder(Landroid/os/Message;)V
.end method

.method protected updateMuteRecoder(Z)V
    .locals 1

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;)Z
    .locals 1

    const/4 v0, 0x7

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
