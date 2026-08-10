.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/AeStateMonitor;
.super Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;
.source "AeStateMonitor.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    return-void
.end method


# virtual methods
.method public onFlashFire()V
    .locals 0

    return-void
.end method

.method public onFlashRequired(Z)V
    .locals 0

    return-void
.end method

.method public startMonitor()V
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->AE_STATE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 27
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->startMonitor()V

    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 33
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->stopMonitor()V

    return-void
.end method
