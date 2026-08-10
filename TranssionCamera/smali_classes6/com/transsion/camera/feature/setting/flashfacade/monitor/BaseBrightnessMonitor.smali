.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;
.super Ljava/lang/Object;
.source "BaseBrightnessMonitor.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor;


# instance fields
.field protected mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field protected mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-void
.end method


# virtual methods
.method protected facingFront()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    return p0
.end method

.method protected isFlashAuto()Z
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public monitorType()Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    return-object p0
.end method

.method public onFlashFire()V
    .locals 0

    return-void
.end method

.method public onFlashRequired(Z)V
    .locals 0

    return-void
.end method

.method public final onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    return-void
.end method

.method protected ringScreenLightOn()Z
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string v0, "key_ring_screen_light"

    .line 87
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected ringScreenLightSupport()Z
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string v0, "key_ring_screen_light"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    return-void
.end method

.method public startMonitor()V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    return-void
.end method

.method public stopMonitor()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendCommandChangeRequest()V

    return-void
.end method
