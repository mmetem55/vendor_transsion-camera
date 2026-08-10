.class public Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;
.super Ljava/lang/Object;
.source "FaceBeautyVideoParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 8

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters], isModeSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isModeSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    const-string v3, "0"

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_video_slimbody_facebeauty_switch"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_video_slimbody_contrast"

    invoke-virtual {v2, v6, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "-1"

    move-object v2, v3

    .line 72
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 73
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v6

    .line 75
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[configParameters], FaceBeautyParam value:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",featureSwitch = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",contrastState = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isNeedToOpen = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isVideoFaceBeauty = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    .line 77
    invoke-virtual {v2}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isVideoFaceBeauty()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needClose = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isSwitchOn()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    const-string v0, "ai"

    const-string v2, "off"

    if-eqz v3, :cond_7

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 88
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 98
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 100
    :cond_6
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 104
    :cond_7
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    :cond_8
    :goto_2
    move-object v1, v2

    .line 106
    :goto_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoBeautyValue(Ljava/lang/String;)V

    return v6
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 40
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyLevels()Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    .line 42
    sget-object p1, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities], supportLevels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mSupportModes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mSupportModes:Ljava/util/List;

    const-string v1, "ai"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "off"

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoParamConfig;->mFaceVideoBeauty:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyVideoSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
