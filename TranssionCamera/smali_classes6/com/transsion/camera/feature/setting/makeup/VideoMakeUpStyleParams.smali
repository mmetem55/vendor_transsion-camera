.class public Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;
.super Ljava/lang/Object;
.source "VideoMakeUpStyleParams.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private makeUpOptionOn()Z
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    const-string v0, "key_video_makeup"

    .line 72
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 71
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->isModeSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    if-nez v1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->makeUpOptionOn()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    iget p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpVideoMode(I)V

    .line 60
    iget-object p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpVideoIntensitys([F)V

    .line 61
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    iget p1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoMakeUpValue(IF)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpVideoMode(I)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 64
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpVideoIntensitys([F)V

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoMakeUpValue(IF)V

    :goto_0
    return v2
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->mVideoMakeUpStyleSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->initMakeUp()V

    return-void
.end method
