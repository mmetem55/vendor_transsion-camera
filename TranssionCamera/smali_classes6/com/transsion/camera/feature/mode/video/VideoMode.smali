.class public Lcom/transsion/camera/feature/mode/video/VideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;
    }
.end annotation


# static fields
.field private static final CLASS_360_VIDEO_HDR_PREVIEW:Ljava/lang/String; = "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

.field private static final INTERACTIVE_SETTING_UI_BACK_ID:Ljava/lang/String; = "video_mode_interactive_setting_ui_back_entries"

.field private static final INTERACTIVE_SETTING_UI_FRONT_ID:Ljava/lang/String; = "video_mode_interactive_setting_ui_front_entries"

.field private static final MULTI_VIDEOENTRY:Ljava/lang/String; = "com.transsion.camera.ui.setting.multifacebeauty.MultiFaceBeautyVideoSettingUIEntry"

.field private static final SLIMBODY_VIDEOENTRY:Ljava/lang/String; = "com.transsion.camera.feature.slimbody.ui.SlimBodyVideoSettingUIEntry"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

.field private mFaceAttributeSupport:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field protected mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

.field private final mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

.field protected mIsGLRecording:Z

.field private final mIsSprdPlatform:Z

.field private mIsVideoHDRInited:Z

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewBackgroundSupport:Z

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mVideoHDRState:Z

.field private mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

.field private mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;


# direct methods
.method public static synthetic $r8$lambda$KzLtyyGzy823MnrgDHcYn3XV6l8(Lcom/transsion/camera/feature/mode/video/VideoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 119
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFaceAttributeSupport:Z

    const/4 p2, 0x0

    .line 121
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 127
    new-instance v0, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 132
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 134
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    const-string p1, "ro.boot.product.vendor.sku"

    const-string p2, ""

    .line 141
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sprd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsSprdPlatform:Z

    .line 577
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 588
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$2;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 933
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$4;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    .line 1012
    new-instance p1, Lcom/transsion/camera/feature/mode/video/VideoMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$5;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    if-eqz p3, :cond_0

    .line 145
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    :cond_0
    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/video/VideoMode;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->computeRemainedRecorderTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/video/VideoMode;IILjava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/video/VideoMode;I)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/content/Context;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->convertJpegOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/VideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/IVideoModeCallback;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/os/Handler;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private convertJpegOrientation(I)I
    .locals 0

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 3

    .line 616
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 619
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 621
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 622
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 623
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 1

    .line 1082
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1084
    array-length p2, p1

    if-lez p2, :cond_3

    .line 1085
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    const/4 p3, 0x0

    .line 1086
    aget p1, p1, p3

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    if-lt p1, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 1088
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    if-eq p2, p3, :cond_3

    .line 1091
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_video_enhance"

    .line 1092
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_enhance_yuv"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1093
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_3

    .line 1094
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    .line 1095
    sget-object p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mVideoHDRState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1096
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoHDRState(Z)V

    :cond_3
    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    .line 369
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private initVideoHDR()V
    .locals 4

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initVideoHDR], mIsVideoHDRInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->setDataBufferRecorderCallback(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;)V

    .line 901
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->init()V

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_mute_recoder"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateMuteRecoder(Z)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mHDRDataPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoHDRState(Z)V

    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 566
    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 567
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 568
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    .line 569
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v0, 0x5

    if-ne v0, p2, :cond_0

    .line 570
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAodUIOrientation()I

    move-result p1

    .line 572
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private isVideoBeautyHasConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 519
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isVideoBeautyNeedReduce(I)Z
    .locals 8

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_video_beauty_preview_size_reduce"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result v0

    const-string v2, "key_video_facebeauty"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "video_facebeauty_off"

    const-string v5, ", cameraId: "

    const-string v6, "[VideoMode] isVideoBeautyNeedReduce videoBeauty = "

    if-nez v2, :cond_1

    .line 709
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 716
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", quality = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    return v4

    .line 710
    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v4

    .line 723
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "video_facebeauty_on"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 725
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getItelFaceBeautyType(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_face_beauty"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "0"

    .line 727
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method private isVideoBeautyOn()Z
    .locals 1

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_facebeauty"

    .line 797
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video_facebeauty_on"

    .line 796
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoHumanDetectSupported(Landroid/content/Context;)Z
    .locals 1

    .line 736
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "video_mode_human_detect_support"

    .line 735
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVideoMakeUpOn()Z
    .locals 1

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_makeup"

    .line 792
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 791
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVideoPortraitNeedReduce()Z
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_portrait"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_video_portrai_preview_size_reduce"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoPortraitOn()Z
    .locals 1

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_portrait"

    .line 802
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 801
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isWideOrLongFocusSupport(Ljava/lang/String;)Z
    .locals 7

    .line 819
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_mode_backwide_support_360hdr"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 820
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVideoSuperNightSupport()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 822
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    .line 823
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backWideSupport360Hdr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoSuperNightSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isWideSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isLongFocusSupport:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method private needReducePreviewSize(I)Z
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitNeedReduce()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyNeedReduce(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private pauseVideoHDR()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pauseVideoHDR]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->modePause()V

    .line 927
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 928
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 929
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->leave(Z)Z

    :cond_0
    return-void
.end method

.method private resumeVideoHDR()V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resumeVideoHDR]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->modeResume()V

    .line 919
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 920
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->resume()V

    return-void
.end method

.method private saveJpegToFile([BLandroid/graphics/Bitmap;)V
    .locals 4

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1055
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 1056
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1055
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1057
    new-instance v2, Lcom/transsion/camera/feature/mode/video/VideoMode$6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$6;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private unInitVideoHDR()V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInitVideoHDR]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->unInit()V

    const/4 v0, 0x0

    .line 913
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    return-void
.end method

.method private updateSupportedList(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 403
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    .line 404
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    const-string p2, "6_60"

    .line 406
    invoke-virtual {p1, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/common/relation/Relation;",
            ")V"
        }
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_0

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    sget-object v2, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoQualityRelation supportStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x6

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_2

    .line 392
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    .line 394
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 396
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getDataFlowType()I
    .locals 2

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_super_night"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 746
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    .line 749
    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "key_anti_video"

    .line 448
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_night_hawk"

    .line 449
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_animal_eye_detection"

    .line 450
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_eye_detection"

    .line 451
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_tran_plugin_mode_can_support"

    .line 452
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_transsion_filter"

    .line 453
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_video_sight_shock"

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_video_filter"

    .line 455
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_video_effect"

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_video_frame"

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "key_activity_orientation"

    .line 458
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_fingerprint_capture"

    .line 459
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "key_dol_video_hdr"

    .line 461
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v3, "key_video_enhance"

    .line 463
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_video_super_night"

    .line 464
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_video_enhance_yuv"

    .line 465
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_video_super_night_yuv"

    .line 466
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "key_360_video_hdr"

    .line 468
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 471
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsSprdPlatform:Z

    const-string v6, "key_video_slimbody_info"

    const-string v7, "key_video_slimbody_face_beauty"

    const-string v8, "video_mode_interactive_setting_ui_back_entries"

    const-string v9, "com.transsion.camera.feature.slimbody.ui.SlimBodyVideoSettingUIEntry"

    if-eqz v3, :cond_2

    .line 473
    invoke-direct {p0, p1, v9, v8}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyHasConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    invoke-direct {p0, p1, v9, v8}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyHasConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 480
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v3, "com.transsion.camera.ui.setting.multifacebeauty.MultiFaceBeautyVideoSettingUIEntry"

    const-string v6, "video_mode_interactive_setting_ui_front_entries"

    .line 484
    invoke-direct {p0, p1, v3, v6}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyHasConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "key_video_multi_face_beauty"

    .line 485
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_5

    const-string v3, "key_video_facebeauty"

    .line 490
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    const-string v3, "key_video_makeup"

    .line 492
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_video_portrait_level"

    .line 493
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f03011d

    .line 494
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "com.transsion.camera.feature.mode.makeup.ui.VideoFaceBeautySettingUIEntry"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const v7, 0x7f03011e

    .line 495
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v3, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    const-string v3, "key_mu_face_beauty"

    .line 497
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_7
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoHumanDetectSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "key_human_detection"

    .line 501
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "key_micro_pan_tilt_calibration"

    .line 504
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_9
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getItelFaceBeautyType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_a

    const v3, 0x7f050051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getItelFaceBeautyType(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v5, :cond_c

    :cond_b
    const-string p0, "key_face_beauty"

    .line 507
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const p0, 0x7f0500bf

    .line 509
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "key_limit_face_detection"

    .line 510
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_taint_detection"

    .line 513
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 8

    .line 413
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getPreviewRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_zoom"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v3

    .line 419
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v4

    .line 420
    sget-object v5, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getModeRelation] cameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", longFocusMiniZoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainMiniZoom: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_0

    const-string v1, "wide"

    goto :goto_0

    :cond_0
    if-lt v1, v3, :cond_1

    const-string v1, "long-focus"

    goto :goto_0

    :cond_1
    const-string v1, "main"

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 436
    :cond_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 437
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_flash"

    const-string v1, "off"

    .line 438
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_flash_facade"

    .line 439
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 655
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v2, "_"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 657
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->needReducePreviewSize(I)Z

    move-result v2

    const/16 v3, 0x2d0

    const/16 v4, 0x438

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 659
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getPreviewSize videoFrameSize is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 661
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1

    .line 665
    :cond_0
    iget-wide v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 666
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 668
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 669
    iput-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object v5

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isInVideoHDRState()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    if-ne v1, p1, :cond_2

    .line 676
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x500

    invoke-direct {p1, v0, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 678
    :cond_2
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x780

    invoke-direct {p1, v0, v4}, Landroid/util/Size;-><init>(II)V

    .line 680
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 158
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const-string p2, "key_mute_recoder"

    .line 159
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p4

    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 161
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFaceAttributeSupport:Z

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0a0018

    .line 164
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    move p2, p5

    goto :goto_0

    :cond_0
    move p2, p4

    .line 165
    :goto_0
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundSupport:Z

    .line 166
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p2, :cond_1

    .line 168
    new-instance p6, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;

    const/4 p7, 0x0

    invoke-direct {p6, p7}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode$1;)V

    invoke-interface {p2, p6}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-nez p2, :cond_2

    new-array p2, p5, [Ljava/lang/Object;

    aput-object p1, p2, p4

    const-string p1, "com.transsion.camera.feature.setting.videohdr.preview.VideoHDRPreview"

    .line 173
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_3

    const-string p1, "key_360_video_hdr"

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 178
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 179
    new-instance p1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    .line 180
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    if-nez p1, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->initVideoHDR()V

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "key_dol_video_hdr"

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected isInVideoHDRState()Z
    .locals 5

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isInVideoHDRState] cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isWideOrLongFocusSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 811
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_360_video_hdr"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoHDRState:Z

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 834
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "video_mode_support_back_360hdr"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 836
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "video_mode_support_front_360hdr"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportBackgroundPreview()Z
    .locals 1

    .line 1108
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundSupport:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 4

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needAudio()Z
    .locals 3

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mute_recoder"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteRecoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "off"

    .line 276
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 547
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-nez v0, :cond_0

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mVideoUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 554
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 556
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 874
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isInVideoHDRState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 877
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 880
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->leave(Z)Z

    move-result p0

    return p0

    .line 883
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 151
    new-instance p0, Lcom/transsion/camera/feature/mode/video/VideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoHelper;-><init>()V

    return-object p0
.end method

.method public onMediaRecorderPreparing()V
    .locals 1

    .line 297
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPreparing()V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 639
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 525
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    .line 527
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isInVideoHDRState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method protected onSATStreamIdChanged(IIZZ)V
    .locals 8

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSATStreamIdChanged]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,  cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isSATCamera:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne p1, p2, :cond_1

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-nez p0, :cond_0

    .line 308
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->reset()V

    :cond_0
    return-void

    .line 313
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "periscope"

    const-string v5, "long-focus"

    const-string v6, "reset"

    const-string v7, "wide"

    if-eqz v0, :cond_2

    move-object v0, v7

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "main"

    goto :goto_0

    .line 324
    :cond_3
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v0, v6

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getSatRelation(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 334
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    .line 337
    invoke-interface {v3, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 338
    sget-object v6, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {p2, v2, v3, v6}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 340
    invoke-direct {p0, v2, p1, p3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateSupportedList(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 341
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->updateVideoQualityRelation(Ljava/util/List;Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_6
    if-eqz p4, :cond_a

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_a

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 348
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 349
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 350
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    .line 353
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getVideoHDRRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p1, 0x0

    .line 351
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getVideoHDRRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 356
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    if-eqz p1, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 357
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoRestriction;->getQuickPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 362
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 534
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 251
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_mute_recoder"

    .line 253
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateMuteRecoder(Z)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateMuteRecoder(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "key_360_video_hdr"

    .line 259
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->onOrientationChanged(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSettingReady()V
    .locals 3

    .line 281
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_algorithm_migrate"

    .line 284
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 283
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVideoSuperNightSupport()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoSuperNightSupport(Z)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_mode_backwide_support_360hdr"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->setVideoBackWideSupport360Hdr(Z)V

    :cond_1
    return-void
.end method

.method protected onSnapShotStart()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onVideoMediaRecorderInfoConstruct], setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->pauseVideoHDR()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_2

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->resumeVideoHDR()V

    :cond_0
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .locals 0

    .line 644
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected starStopHDRRecording()V
    .locals 5

    .line 842
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->startStop(Landroid/util/Size;)V

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 845
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    goto :goto_0

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->startStopRecording(Z)V

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->setOrientation(I)V

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_mute_recoder"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateMuteRecoder(Z)V

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    .line 852
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_1

    .line 853
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 854
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v3, 0x2

    new-instance v4, Lcom/transsion/camera/feature/mode/video/VideoMode$3;

    invoke-direct {v4, p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode$3;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode;Landroid/util/Size;)V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    .line 868
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    .line 869
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 754
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 764
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3

    .line 765
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 757
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 758
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 768
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoBeautyOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoPortraitOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->isVideoMakeUpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_3

    .line 784
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 776
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 777
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 787
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    const-string v0, "key_mute_recoder"

    .line 201
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsVideoHDRInited:Z

    if-eqz v0, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->unInitVideoHDR()V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->unInit()V

    .line 214
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    .line 216
    :cond_2
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    const-string v0, "key_360_video_hdr"

    .line 217
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "key_dol_video_hdr"

    .line 220
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 889
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 892
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 893
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->storageUnmounted()V

    :cond_0
    return-void
.end method
