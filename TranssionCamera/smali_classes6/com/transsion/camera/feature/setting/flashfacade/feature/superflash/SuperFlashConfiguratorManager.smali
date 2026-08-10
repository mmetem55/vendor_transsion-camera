.class Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
.source "SuperFlashConfiguratorManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V
    .locals 0

    .line 22
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
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorFactory;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object v0
.end method

.method onConfigStart()V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mConfigurator:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;->onConfigStart()V

    return-void
.end method
