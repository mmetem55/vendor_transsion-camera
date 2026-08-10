.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
.source "LedFlashConfiguratorManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    return-void
.end method


# virtual methods
.method protected createConfiguratorFactory()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory<",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorFactory;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-object v0
.end method

.method onConfigStart()V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onConfigStart()V

    return-void
.end method

.method updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method
