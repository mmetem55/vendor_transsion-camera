.class public Lcom/transsion/secondaryhome/SecondarySdkWorker;
.super Ljava/lang/Object;
.source "SecondarySdkWorker.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field private static final IMMORTAL_THREAD:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "SecondaryWorker"

.field static workerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$6bSHA9959PHAnAbt7mK_kT-vJ98()V
    .locals 0

    invoke-static {}, Lcom/transsion/secondaryhome/SecondarySdkWorker;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/transsion/secondaryhome/SecondarySdkWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/secondaryhome/SecondarySdkWorker$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/transsion/secondaryhome/SecondarySdkWorker;->IMMORTAL_THREAD:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWorkerHandler()Landroid/os/Handler;
    .locals 5

    .line 27
    :try_start_0
    invoke-static {}, Lcom/transsion/secondaryhome/common/utils/ThreadManager;->getInstance()Lcom/transsion/secondaryhome/common/utils/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/secondaryhome/common/utils/ThreadManager;->getSdkWorkerHandler()Landroid/os/Handler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "SecondaryWorker"

    const-string v1, "not find WorkerHandler in secondaryhome!!"

    .line 29
    invoke-static {v0, v1}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/transsion/secondaryhome/SecondarySdkWorker;->workerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/transsion/secondaryhome/SecondarySdkWorker;

    monitor-enter v0

    .line 34
    :try_start_1
    sget-object v1, Lcom/transsion/secondaryhome/SecondarySdkWorker;->workerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "sdk_worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/transsion/secondaryhome/SecondarySdkWorker;->workerHandler:Landroid/os/Handler;

    .line 38
    sget-object v1, Lcom/transsion/secondaryhome/SecondarySdkWorker;->IMMORTAL_THREAD:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/secondaryhome/SecondarySdkWorker;->workerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic lambda$static$0()V
    .locals 3

    .line 51
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SecondaryWorker"

    const-string v2, "catch SdkWorkerHandler task err:"

    .line 53
    invoke-static {v1, v2, v0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
