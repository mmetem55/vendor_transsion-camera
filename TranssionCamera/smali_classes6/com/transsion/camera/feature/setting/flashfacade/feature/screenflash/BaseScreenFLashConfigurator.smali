.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
.source "BaseScreenFLashConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    return-void
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;->screenFlashOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected screenFlashOn()Z
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
