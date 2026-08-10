.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/configurator/ConfiguratorScreenFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;
.source "ConfiguratorScreenFlash.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    return-void
.end method


# virtual methods
.method public onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/BaseLedFlashConfigurator;->onEntry(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    return-void
.end method
