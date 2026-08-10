.class public abstract Lcom/transsion/camera/adapter/CameraAgent;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;,
        Lcom/transsion/camera/adapter/CameraAgent$Customer;,
        Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;
    }
.end annotation


# instance fields
.field private mCameraProxyCreatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field protected mOpenDoubleDevice:Z

.field protected mRequestHandler:Landroid/os/Handler;

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mRespondThread:Landroid/os/HandlerThread;

.field protected mResponseHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/HashMap;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Request_Camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response_Camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;->startThread()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method

.method private startThread()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized closeCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->access$200(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
.end method

.method public getRequestThread()Landroid/os/HandlerThread;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method abstract onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.end method

.method public declared-synchronized openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent;->onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-static {v0, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->access$000(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract reInitFirstForPermission()V
.end method

.method public declared-synchronized releaseCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCameraProxyCreatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->access$100(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOpenDoubleDevice(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    return-void
.end method
