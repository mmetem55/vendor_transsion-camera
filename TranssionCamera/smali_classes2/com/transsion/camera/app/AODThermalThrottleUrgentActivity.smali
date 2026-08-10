.class public Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;
.super Landroid/app/Activity;
.source "AODThermalThrottleUrgentActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

.field private final mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mResumed:Z

.field private mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;


# direct methods
.method public static synthetic $r8$lambda$CoKXQ6ZlSlUeWZV7LvqSn9Kk_iM(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$evW9T9z6FAi0SM9Y8wT9fIPpYFI(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rZp70Vht0RJUeatklvpJFC8LKDs(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->lambda$new$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->processFoldingFeatureState(I)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 3

    .line 53
    sget-object v0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HingeState] DeviceStateCallback onStateChanged, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 64
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->processFoldingFeatureState(I)V

    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    sget-object p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "exit camera"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private launchThermalThrottleUrgentActivity()V
    .locals 7

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->isKeyguardSecure()Z

    move-result v1

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->isKeyguardLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "isSecureCamera"

    .line 149
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    sget-object v4, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchThermalThrottleUrgentActivity, keyguardSecure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyguardLocked: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private processFoldingFeatureState(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    iget-boolean p1, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mResumed:Z

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->launchThermalThrottleUrgentActivity()V

    :cond_0
    return-void
.end method

.method private provideKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    const-string v0, "keyguard"

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object p1, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "show aod thermal throttle warning!!!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->thermalWaring(I)V

    .line 78
    new-instance p1, Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    .line 79
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onCreate()V

    .line 81
    new-instance p1, Lcom/transsion/camera/app/ui/AODThermalThrottleUI;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/AODThermalThrottleUI;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;->inflateView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;

    new-instance v0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;->setThermalThrottleOperator(Lcom/transsion/camera/app/ui/IAODThermalThrottleUI$IThermalThrottleOperator;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;->setupView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mResumed:Z

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;->pause()V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mResumed:Z

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IAODThermalThrottleUI;->resume()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onStart()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    new-instance v1, Landroid/os/Handler;

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->registerDeviceStateCallback(Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onStop()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/AODThermalThrottleUrgentActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->unregisterDeviceStateCallback()V

    return-void
.end method
