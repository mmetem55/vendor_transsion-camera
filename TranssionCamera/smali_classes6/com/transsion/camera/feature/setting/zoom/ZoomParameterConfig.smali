.class public Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;
.super Ljava/lang/Object;
.source "ZoomParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DUAL_VIDEO_MODE:Ljava/lang/String; = "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

.field private static final FUN_VIDEO_MODE:Ljava/lang/String; = "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

.field private static final MAX_LIMITED_VALUE:I = 0x190

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_LAPSE_VIDEO_MODE:Ljava/lang/String; = "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

.field private static final VIDEO_MODE:Ljava/lang/String; = "com.transsion.camera.feature.mode.video.VideoModeEntry"


# instance fields
.field private mIsZoomSupported:Z

.field private mLastZoomLevel:Ljava/lang/String;

.field private mMaxZoom:Ljava/lang/String;

.field private mPreviewChanged:Z

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "100"

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewChanged:Z

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewChanged:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)Lcom/transsion/camera/feature/setting/zoom/Zoom;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    return-object p0
.end method

.method private isZoomValueValid(Ljava/lang/String;)Z
    .locals 3

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 204
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v0, "100"

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private needFovWideCrop()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 137
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 138
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    const-string v1, "key_anti_video"

    .line 140
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 141
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private reset()V
    .locals 2

    .line 211
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "100"

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->isZoomValueValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setZoomRatio(IZ)V

    .line 127
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->needFovWideCrop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFovWideCrop(Z)V

    .line 130
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setZoomValue(Ljava/lang/String;)V

    .line 131
    sget-object p1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] mLastZoomLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mLastZoomLevel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentZoomLevel:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getStreamId()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mStreamId:I

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_camera_zoom"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 6

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCameraCapabilities],supportedZoomRatios :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->minimizeZoomStep()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v1, v3

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "100"

    if-lez v1, :cond_8

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMaxValueLimited()Z

    move-result v1

    const/4 v5, -0x1

    if-eqz v1, :cond_2

    const/16 p1, 0x190

    goto :goto_1

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForVideo()I

    move-result p1

    goto :goto_1

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForDocument()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForDocument()I

    move-result p1

    goto :goto_1

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldLimitForFunVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForFunVideo()I

    move-result p1

    goto :goto_1

    .line 75
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->shouldLimitZoomInSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 77
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMovieMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getLimitValueForMovieMode()I

    move-result p1

    goto :goto_1

    :cond_7
    move p1, v5

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v5, :cond_8

    if-le v1, p1, :cond_8

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 86
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 87
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 91
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    const-string v0, "-1"

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 95
    :cond_a
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mIsZoomSupported:Z

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mMaxZoom:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mZoom:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mSatSupport:Z

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, p1, v4}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 100
    :goto_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->reset()V

    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewChanged:Z

    .line 194
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->mPreviewStopped:Z

    :cond_0
    return-void
.end method
