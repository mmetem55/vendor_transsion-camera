.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.source "BaseSuperFlashConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    .line 31
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->getScreenTorchStatus()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    return-void
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 42
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->lowLight()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLight()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->forceLowLightState()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    const-string v1, "on"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected onConfigStart()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->screenFlashOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    const-string v0, "screen_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->ringScreenLightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    const-string v0, "ring_screen_light"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 2

    .line 54
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->superFlashOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    const-string v1, "off"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected superFlashOn()Z
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
