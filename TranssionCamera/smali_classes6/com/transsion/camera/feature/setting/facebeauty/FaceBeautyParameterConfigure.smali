.class public Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "FaceBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

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

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->algorithmMigrate()Z

    move-result v1

    .line 70
    sget-object v2, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", IsModeSupport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    .line 71
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->isModeSupport()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", algorithmMigrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "off"

    if-eqz v0, :cond_8

    .line 73
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->isModeSupport()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "ai"

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "aiv2"

    if-nez v4, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "supernight"

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    if-nez v1, :cond_9

    .line 84
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_4

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    :cond_2
    const-string p0, "0"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 95
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyLevel(Ljava/lang/String;)V

    .line 99
    :cond_4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_6
    if-nez v1, :cond_7

    .line 77
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 79
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyValue(Ljava/lang/String;)V

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->getSupportedFaceBeautyLevels()Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeautyCapability;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyLevels()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFaceBeautyModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    .line 46
    sget-object p1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities], supportLevels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mSupportModes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v2, "ai"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v3, "aiv2"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 58
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mSupportModes:Ljava/util/List;

    const-string v2, "supernight"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;->mFaceBeauty:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
