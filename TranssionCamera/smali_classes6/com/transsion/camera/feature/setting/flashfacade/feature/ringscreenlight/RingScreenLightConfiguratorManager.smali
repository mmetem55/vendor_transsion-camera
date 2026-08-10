.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
.source "RingScreenLightConfiguratorManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
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
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;",
            "Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/BaseRingScreenFlashConfigurator;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorFactory;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    return-object v0
.end method

.method public onPreviewStarted()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->onPreviewStarted()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;->onPreviewStopped()V

    return-void
.end method
