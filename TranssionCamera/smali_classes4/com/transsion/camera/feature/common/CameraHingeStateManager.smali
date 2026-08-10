.class public Lcom/transsion/camera/feature/common/CameraHingeStateManager;
.super Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;
.source "CameraHingeStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private mHingeStateHandler:Landroid/os/Handler;

.field private mHingeStateThread:Landroid/os/HandlerThread;

.field private mSelfDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;-><init>(Lcom/transsion/camera/feature/common/CameraHingeStateManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "makefile CameraHingeStateManager"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "device_state"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 25
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "HingeState_CB"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateThread:Landroid/os/HandlerThread;

    .line 26
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 13
    sget-object v0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/common/CameraHingeStateManager;)Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mSelfDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 35
    iput-object v1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public registerDeviceStateCallback(Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;Landroid/os/Handler;)V
    .locals 2

    .line 41
    sget-object p2, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDeviceStateCallback, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mSelfDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz p1, :cond_0

    .line 44
    new-instance p2, Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;

    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mHingeStateHandler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Lcom/transsion/camera/feature/common/CameraHingeStateManager$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {p1, p2, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterDeviceStateCallback()V
    .locals 2

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unregisterDeviceStateCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method
