.class public Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;
.super Ljava/lang/Object;
.source "TeleCameraParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    .line 21
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getTeleCamDefaultOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/telecamera/TeleCameraParameterConfigure;->mTeleCamera:Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/telecamera/TeleCamera;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
