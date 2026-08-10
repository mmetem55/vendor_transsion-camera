.class public Lcom/transsion/camera/manager/ScreenRelay;
.super Ljava/lang/Object;
.source "ScreenRelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;,
        Lcom/transsion/camera/manager/ScreenRelay$Screen;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCapturingWhenSwitchScreen:Z

.field private mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNotifyRunnable:Ljava/lang/Runnable;

.field private final mResetRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$uVjcmq11SDFkiQS_N45lmxGcWyY(Lcom/transsion/camera/manager/ScreenRelay;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/manager/ScreenRelay;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->UNKNOWN:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 67
    new-instance v0, Lcom/transsion/camera/manager/ScreenRelay$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/manager/ScreenRelay$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/manager/ScreenRelay;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/manager/ScreenRelay$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/manager/ScreenRelay;
    .locals 1

    .line 77
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay$InstanceHolder;->access$200()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 68
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "reset capture state"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method private notifyState()V
    .locals 3

    .line 138
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mNotifyRunnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private screenSwitched()V
    .locals 3

    .line 98
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenSwitched mCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturingWhenSwitchScreen:Z

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateCaptureState(Z)V
    .locals 3

    .line 128
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCaptureState capturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturingWhenSwitchScreen:Z

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->notifyState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureComplete()V
    .locals 2

    .line 117
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureComplete"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public captureFail()V
    .locals 2

    .line 111
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "captureFail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public imageAvailable()V
    .locals 2

    .line 122
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "imageAvailable"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 81
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startCapture()V
    .locals 2

    .line 105
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->updateCaptureState(Z)V

    return-void
.end method

.method public switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V
    .locals 3

    .line 89
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen mCurrentScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    if-eq v0, p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCurrentScreen:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/manager/ScreenRelay;->screenSwitched()V

    :cond_0
    return-void
.end method

.method public waitCapturing(Ljava/lang/Runnable;)Z
    .locals 3

    .line 145
    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitCapturing mCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCapturingWhenSwitchScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturingWhenSwitchScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/manager/ScreenRelay;->mNotifyRunnable:Ljava/lang/Runnable;

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/manager/ScreenRelay;->mCapturing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
