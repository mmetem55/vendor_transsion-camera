.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1134
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method changeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1179
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1182
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    .line 1183
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    return-void
.end method

.method previewError()V
    .locals 1

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter(I)V

    return-void
.end method

.method previewStarted()V
    .locals 3

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStartPreview(ILjava/lang/String;)V

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getActionSoundInfo()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 1147
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "low platform after previewStarted to setCameraParameters"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :cond_2
    return-void
.end method

.method stopPreview()V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 1164
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStopPreview(Ljava/lang/String;)V

    .line 1167
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void
.end method

.method stopRepeating()V
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->stopRepeating()V

    :cond_0
    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method
