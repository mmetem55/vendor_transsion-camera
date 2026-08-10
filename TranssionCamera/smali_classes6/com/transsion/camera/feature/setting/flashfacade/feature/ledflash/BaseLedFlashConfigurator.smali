.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.source "BaseLedFlashConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

.field protected final mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

.field protected final mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->getFlashStyle()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    .line 35
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->getLuminanceAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    .line 36
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->getFrontDualFlashAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    return-void
.end method


# virtual methods
.method protected configFlashStyleOneStage()Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->configFlashStyleOneStage()Z

    move-result p0

    return p0
.end method

.method protected facingFront()Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result p0

    return p0
.end method

.method protected onConfigStart()V
    .locals 0

    return-void
.end method

.method protected onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 42
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->valueSupportAdjust(Z)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->valueSupportAdjust(Z)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setFlashAutoMode(Z)V

    :cond_1
    return-void
.end method

.method protected oneStageFlashStyle()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->videoMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->superFlashPlatformSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->facingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->currentModeSupportOneStage()Z

    move-result v1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->rearCameraSuperFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->currentModeSupportOneStage()Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->configFlashStyleOneStage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->currentModeSupportOneStage()Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method protected rearCameraSuperFlashSupport()Z
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->rearCameraSuperFlashSupport()Z

    move-result p0

    return p0
.end method

.method protected ringScreenLightOn()Z
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v0, "key_ring_screen_light"

    .line 119
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 118
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected ringScreenLightSupport()Z
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v0, "key_ring_screen_light"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected screenFlashOn()Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v0, "key_screen_flash"

    .line 110
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 109
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected screenFlashSupport()Z
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string v0, "key_screen_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected superFlashPlatformSupport()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->superFlashPlatformSupport()Z

    move-result p0

    return p0
.end method

.method protected updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected videoMode()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->videoMode()Z

    move-result p0

    return p0
.end method
