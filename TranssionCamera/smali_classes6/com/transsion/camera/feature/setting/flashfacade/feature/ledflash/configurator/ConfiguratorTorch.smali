.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorTorch;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;
.source "ConfiguratorTorch.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method


# virtual methods
.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->valueSupportAdjust(Z)V

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->valueSupportAdjust(Z)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string p1, "torch"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setValue(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method protected updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->setValue(I)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->configSelf(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
