.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1439
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method changeParameter(Ljava/lang/String;)V
    .locals 5

    .line 1468
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1472
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 1473
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RecordingState], changeParameter restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 5

    .line 1479
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1483
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    move-result v1

    .line 1484
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RecordingState], changeParameterSelf restartpreview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1485
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method snapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 7

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1457
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result v0

    .line 1460
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 1463
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v6

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/adapter/CameraProxy;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;I)V

    return-void
.end method

.method stopRecording()V
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopRecording()V

    .line 1448
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method
