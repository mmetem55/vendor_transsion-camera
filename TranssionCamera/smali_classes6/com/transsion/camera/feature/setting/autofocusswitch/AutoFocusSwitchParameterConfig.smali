.class public Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;
.super Ljava/lang/Object;
.source "AutoFocusSwitchParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

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
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

    if-eqz v0, :cond_5

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

    .line 36
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;->isPhotoType()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->continuousFocusSupport(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedEyeDetection()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 38
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHumanDetectionSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string p1, "on"

    if-eqz v2, :cond_2

    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "off"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;->getDefaultAutoFocusType()I

    move-result v2

    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p1

    .line 47
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitchParameterConfig;->mAutoFocusSwitch:Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/autofocusswitch/AutoFocusSwitch;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
