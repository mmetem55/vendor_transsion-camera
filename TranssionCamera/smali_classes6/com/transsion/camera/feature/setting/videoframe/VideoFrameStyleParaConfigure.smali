.class public Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;
.super Ljava/lang/Object;
.source "VideoFrameStyleParaConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;->isModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;->isVideoEffectAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionaVideoFrameId(I)V

    .line 45
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoFrameValue(I)V

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionaVideoFrameId(I)V

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoFrameValue(I)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 34
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoFilterIds()Ljava/util/List;

    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleParaConfigure;->mVideoFrameStyle:Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyle;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
