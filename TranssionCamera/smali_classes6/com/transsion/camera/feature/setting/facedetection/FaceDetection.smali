.class public Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceDetection.java"


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final FACE_DECTION_DELAY:J = 0x3e8L

.field private static final FACE_INIT:I = 0x0

.field private static final HAS_VALID_FACE:I = 0x1

.field private static final MESSAGE_FACE_DECTION_OFF:I = 0x2

.field private static final MESSAGE_FACE_DECTION_ON:I = 0x1

.field private static final NO_VALID_FACE:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALID_FACE_RATIO:F = 0.0055f


# instance fields
.field private isFaceDetecting:Z

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

.field private mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFirebaseGenderSupport:Z

.field private mHandle:Landroid/os/Handler;

.field private mHasValidFace:I

.field private mISDualVideoMode:Z

.field private mIsCapturing:Z

.field private mIsCurrentModeNotSupportFD:Z

.field private mIsPMasterMode:Z

.field private mModeKey:Ljava/lang/String;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    .line 174
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 296
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    .line 316
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$4;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->checkTranssionFaceInfo([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mModeKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->requestFaceDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isSettingSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    return p0
.end method

.method private checkTranssionFaceInfo([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 5

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 161
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getGender()I

    move-result v4

    .line 162
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getAge()I

    move-result v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sex(I)V

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->age(I)V

    .line 166
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isFaceDetecting:Z

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHandle:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private findMaxFaceRect([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;
    .locals 6

    const/4 p0, 0x0

    .line 350
    aget-object v0, p1, p0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    array-length v1, p1

    :goto_0
    if-ge p0, v1, :cond_1

    aget-object v2, p1, p0

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 353
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isSettingSupport()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mModeKey:Ljava/lang/String;

    .line 365
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isVideoMaskOn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoEffectOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 369
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_effect"

    .line 373
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 376
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "effect_default"

    .line 377
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoMaskOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 381
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_frame"

    .line 385
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 387
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 388
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "frame_default"

    .line 389
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private requestFaceDetection()V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_face_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 223
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 205
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_has_valid_face"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceValidResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 206
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_face_detection"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 207
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_face_rect"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceRectResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "firebase_gender_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFirebaseGenderSupport:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isCurrentModeNotSupportFD()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    .line 283
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 272
    iput p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mHasValidFace:I

    .line 273
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mModeKey:Ljava/lang/String;

    const-string p2, "key_limit_face_detection"

    .line 274
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsCurrentModeNotSupportFD:Z

    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 275
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    const-string p2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 276
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mISDualVideoMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p3, "off"

    .line 251
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 252
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 253
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection()V

    const-string p2, "key_ae_af_lock_state"

    .line 254
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mFaceDetectionParameterConfigure:Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->sendSettingChangeRequest()V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 259
    invoke-interface {p0, p3, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsPMasterMode:Z

    if-eqz v0, :cond_0

    const-string v0, "gender_indentification"

    goto :goto_0

    :cond_0
    const-string v0, "on"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
