.class public Lcom/transsion/camera/feature/mode/doc/DocumentThread;
.super Landroid/os/HandlerThread;
.source "DocumentThread.java"


# static fields
.field private static mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    .locals 3

    const-class v0, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    const-string v2, "documentmode_thread"

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 18
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized quitDocThread()V
    .locals 2

    const-class v0, Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->mDocumentModeThread:Lcom/transsion/camera/feature/mode/doc/DocumentThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
