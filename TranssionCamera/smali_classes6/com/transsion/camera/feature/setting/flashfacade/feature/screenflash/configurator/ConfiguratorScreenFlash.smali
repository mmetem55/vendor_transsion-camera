.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/configurator/ConfiguratorScreenFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;
.source "ConfiguratorScreenFlash.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    return-void
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public onNextReady()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/BaseScreenFLashConfigurator;->screenFlashOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
