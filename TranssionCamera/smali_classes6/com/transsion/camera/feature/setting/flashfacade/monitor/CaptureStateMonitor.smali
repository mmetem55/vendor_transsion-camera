.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;
.super Ljava/lang/Object;
.source "CaptureStateMonitor.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

.field private final mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    return-object p0
.end method


# virtual methods
.method public capturing()Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCaptureEnd()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public onNextReady()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onNextReady()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;)V

    return-void
.end method

.method public setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureStateCallback callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;

    return-void
.end method

.method public takePictureEnd(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureEnd()V

    :cond_1
    return-void
.end method

.method public takePictureStart()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCapturing:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->mCallbackWrapper:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$CallbackWrapper;->onCaptureStart()V

    return-void
.end method
