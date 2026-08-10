.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorOn;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;
.source "ConfiguratorOn.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method

.method private flashTorch()Z
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 3

    .line 44
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->oneStageFlashStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    const-string v1, "one_stage"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 3

    .line 55
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorOn;->flashTorch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v2, "on"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    const-string v1, "two_stage"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->setValue(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
