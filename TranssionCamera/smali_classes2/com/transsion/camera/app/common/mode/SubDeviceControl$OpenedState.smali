.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cameraOpened()V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceOpened(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method changeParameter(Ljava/lang/String;)V
    .locals 0

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1085
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    .line 1086
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    return-void
.end method

.method changeParameterSelf(Ljava/lang/String;)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1096
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    return-void
.end method

.method configCommand(Ljava/lang/String;)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 8

    .line 1000
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1001
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOutputChannel, oldMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",isReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mPreviewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1002
    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1004
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1005
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1006
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v7

    .line 1007
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result v4

    .line 1008
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackgroundPreview()Z

    move-result v5

    const/4 p1, 0x0

    .line 1010
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1011
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getPreviewSurfaceType()I

    move-result p1

    :cond_0
    move v6, p1

    .line 1013
    new-instance p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1014
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ZZILcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1016
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1017
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V

    goto :goto_0

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->updateOutputChannel()V

    .line 1021
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    return-void
.end method

.method onEnter(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->updateOutputChannel()V

    :cond_0
    return-void
.end method

.method startPreview()V
    .locals 4

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->hasSetDataChannel()Z

    move-result v0

    .line 1061
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview hasSetDataChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onConfigBeforeStartPreview()V

    .line 1065
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy;->startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStartPreview(ILjava/lang/String;)V

    .line 1070
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    :cond_1
    return-void
.end method

.method updateAuxSurfaceModeSupport(Z)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1112
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method updateAuxSurfaceStatus(Z)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method updateBackgroundSurfaceModeSupport(Z)V
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1128
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method updateBackgroundSurfaceStatus(Z)V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1120
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method updateOutputChannel()V
    .locals 5

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->channelReadyForUpdate(Landroid/util/Size;)Z

    move-result v0

    .line 1031
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOutputChannel channelReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1032
    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", camera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->access$2200(Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentMode.isValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1033
    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v0

    .line 1037
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v1

    .line 1038
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1039
    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1037
    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1041
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraDataChannel;->replacePreviewSurface(Landroid/view/Surface;)V

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1044
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyStartCreatSession(Ljava/lang/String;)V

    .line 1046
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 1047
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;->startPreview()V

    :cond_3
    return-void
.end method
