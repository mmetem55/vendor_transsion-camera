.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 2

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onCaptureCompleted in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureEnded()V

    .line 1555
    :cond_0
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureComplete()V

    .line 1556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onCaptureFailed in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureEnded()V

    .line 1544
    :cond_0
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureFail()V

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureEnded(Z)V

    .line 1546
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureFailed()V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    .line 1532
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onCaptureStarted in device controller."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->startCapture()V

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onCaptureStarted()V

    .line 1535
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureStarted()V

    return-void
.end method
