.class public interface abstract Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor;
.super Ljava/lang/Object;
.source "IBrightnessMonitor.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;
.implements Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;
    }
.end annotation


# virtual methods
.method public abstract monitorType()Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;
.end method

.method public abstract synthetic onFlashFire()V
.end method

.method public abstract synthetic onFlashRequired(Z)V
.end method

.method public abstract synthetic onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
.end method

.method public abstract setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V
.end method

.method public abstract startMonitor()V
.end method

.method public abstract stopMonitor()V
.end method
