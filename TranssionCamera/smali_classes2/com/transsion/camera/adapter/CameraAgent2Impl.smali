.class Lcom/transsion/camera/adapter/CameraAgent2Impl;
.super Lcom/transsion/camera/adapter/CameraAgent;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mAvailabilityHandler:Landroid/os/Handler;

.field private mAvailabilityThread:Landroid/os/HandlerThread;

.field private mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mLock:Ljava/lang/Object;

.field private mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private final mReOpenRunnable:Ljava/lang/Runnable;

.field private final mUnavailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1D8AF9lXkrTRQl4RZROJ59bo2Bc(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->lambda$new$1(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IkPdGF0Lj017xIBAd76g-73zCfw(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$dsX8Ruj9NRNQgIWmc441cFicjXE(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Camera2AgentImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 140
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mReOpenRunnable:Ljava/lang/Runnable;

    const-string v0, "camera"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 45
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->removeUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mReOpenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->addUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->checkCameraAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$800(I)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->convertCameraStateErrorCode(I)I

    move-result p0

    return p0
.end method

.method private addUnavailable(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkCameraAvailable(Ljava/lang/String;)Z
    .locals 3

    .line 136
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static convertCameraStateErrorCode(I)I
    .locals 6

    .line 389
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice$StateCallback error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    :cond_5
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "initDeviceInfo start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AvailabilityCallbackThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityThread:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityHandler:Landroid/os/Handler;

    .line 51
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v3, v4, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    const-string v2, "initDeviceInfo registerAvailabilityCallback"

    .line 52
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;-><init>(Landroid/hardware/camera2/CameraManager;)V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    .line 54
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst()V

    .line 55
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initSecond()V

    const-string v2, "initDeviceInfo end"

    .line 56
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$new$1(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 4

    .line 141
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do ReOpenRunnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    const/4 v2, 0x0

    .line 144
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mPendingOpenCustomer:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->removeUnavailable(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeUnavailable(Ljava/lang/String;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mUnavailableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    :try_start_2
    sget-object v2, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCameraDeviceInfo] error Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method onCreateProxyCreator(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
    .locals 1

    .line 96
    new-instance v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    return-object v0
.end method

.method public reInitFirstForPermission()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->reloadCharacteristics(Landroid/hardware/camera2/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "reInitFirst start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mCameraDeviceInfo:Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst()V

    const-string v2, "reInitFirst end"

    .line 87
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
