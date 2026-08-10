.class public Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;
.super Ljava/lang/Object;
.source "FrontWideCameraParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
