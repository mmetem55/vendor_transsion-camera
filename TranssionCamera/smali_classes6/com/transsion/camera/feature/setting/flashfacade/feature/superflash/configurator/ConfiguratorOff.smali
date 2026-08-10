.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorOff;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;
.source "ConfiguratorOff.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-void
.end method


# virtual methods
.method public onCaptureStart()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
