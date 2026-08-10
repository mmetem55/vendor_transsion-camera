.class public Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;
.super Ljava/lang/Object;
.source "VideoFaceBeautyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;->isModeSupport()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    const-string p0, "video_facebeauty_on"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "video_facebeauty_off"

    .line 55
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceBeautyMode(Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoBeautyValue(Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyParameterConfigure;->mVideoFaceBeauty:Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;->mVideoBeautyCommonValues:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 39
    aget-object v1, v2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "video_facebeauty_off"

    .line 41
    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeauty;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
