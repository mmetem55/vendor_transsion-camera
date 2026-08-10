.class public Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;
.super Ljava/lang/Object;
.source "CamModeParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mCamMode:Lcom/transsion/camera/feature/setting/cammode/CamMode;

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/cammode/CamMode;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mCamMode:Lcom/transsion/camera/feature/setting/cammode/CamMode;

    .line 23
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mCamMode:Lcom/transsion/camera/feature/setting/cammode/CamMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAppModeId(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mCamMode:Lcom/transsion/camera/feature/setting/cammode/CamMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;->mCamMode:Lcom/transsion/camera/feature/setting/cammode/CamMode;

    const-string v0, "val_def"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
