.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;
.source "ConfiguratorAuto.java"


# static fields
.field private static final PAUSE_OFF_DELAY_TIME:J = 0x12cL


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mPauseOffTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$J77bp64GEGiWxs__Nl_EZWyz3_Q(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    .line 32
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private lowLightDetected()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->lowLight()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLightState()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateValue()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateValueImmediately()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->lowLightDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 70
    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValueImmediately(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onBrightnessDetected(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->capturing()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->recording()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValueImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->updateValue()V

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onRecordEnd()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method protected pause()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->pause()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/configurator/ConfiguratorAuto;->mPauseOffTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
