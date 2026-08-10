.class Lcom/transsion/camera/adapter/CameraProxy2Impl;
.super Lcom/transsion/camera/adapter/CameraProxy;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;,
        Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;
    }
.end annotation


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private isDoStartPreview:Z

.field private final mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field private final mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

.field private mAeChangeMinDuration:I

.field private mAeChangeTimeOut:I

.field private mAeStable:Z

.field private mAfStable:Z

.field private mAuxPreviewSurface:Landroid/view/Surface;

.field private mAuxSurfaceModeSupport:Z

.field private mAuxSurfaceNeedShow:Z

.field private mBackgroundPreviewSurface:Landroid/view/Surface;

.field private mBackgroundSurfaceModeSupport:Z

.field private mBackgroundSurfaceNeedShow:Z

.field private mCSPictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraId:Ljava/lang/String;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

.field private mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

.field private final mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

.field private final mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

.field private final mCheckAeStableForCapturing:Ljava/lang/Runnable;

.field private mCurShutterPriority:I

.field private mDeferredOutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFastThumbSurface:Landroid/view/Surface;

.field private mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mInContinuousCapture:Z

.field private mIsCancelCapture:Z

.field private mIsFinalizeConfigured:Z

.field private mIsLegacyDevice:Z

.field private mIsPause:Z

.field private mIsPrepareSuccess:Z

.field private mIsSettingPreviewUse:Z

.field private mModeThumbnailSource:I

.field private mNeedCaptureSound:Z

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

.field private mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreFlashStartTime:J

.field private mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private final mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewYUVReader:Landroid/media/ImageReader;

.field private mRecordSurface:Landroid/view/Surface;

.field private mRecorderState:Z

.field private volatile mReleased:Z

.field private mRequestHandler:Landroid/os/Handler;

.field private final mResponseHandler:Landroid/os/Handler;

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSessionState:I

.field private mSessionType:I

.field private mSetRepeatingRequestTime:J

.field private mSettingPreviewDataCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private mShot2ShotCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterClickSampleId:I

.field private mShutterSoundEnabled:Z

.field private mShutterSoundLoaded:Z

.field private mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mSoundPlayerLock:Ljava/lang/Object;

.field private mStartVideoRecordingSampleId:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field private mStopVideoRecordingSampleId:I

.field private mThumbnailSurface:Landroid/view/Surface;

.field private mUsePreAECaptureForSprd:Z

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;


# direct methods
.method public static synthetic $r8$lambda$Bqu1XqeTSxybTDrh3bvZ750fePc(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$startRecordingRequest$5(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLOoGao6B9rvqzj_73ZHDpo-Q0s(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QN__mkQQF8Z56Bs0j6xFn34JicU(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doPreAECapture$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$QXAZwAeR9GYRd0anacsTT6_EBaU(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zz5xm4C_4PDb_Iv1avU9DyGK_5Y(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doAFAndCapture$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$enFcWUykmmK_0BaxxKhu3LSKbtg(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZtyWvVQ2DKGcJz0CphihPLJ-hQ(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRaobr34A9imOzmsMMxPEJELAMA(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->lambda$doEnableShutterSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy;-><init>()V

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Proxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v2, 0x2

    .line 88
    iput v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    const/4 v2, 0x1

    .line 92
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    .line 93
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    .line 96
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    .line 98
    new-instance v3, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v3}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    .line 99
    new-instance v3, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v3}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    .line 114
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    .line 115
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 122
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    .line 124
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    .line 149
    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    .line 1534
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    .line 1543
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    .line 1610
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    const/4 v1, -0x1

    .line 2333
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    .line 2556
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$7;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 2581
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 2632
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 156
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    .line 157
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    .line 158
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setTagValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkAeAfStableToCapture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/adapter/CameraProxy2Impl;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsSettingPreviewUse:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    return p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkAeSearching(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$3702(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->notifySessionFail()V

    return-void
.end method

.method static synthetic access$4000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    return p1
.end method

.method private checkAeAfStableToCapture()V
    .locals 3

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeAfStableToCapture mAeStable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAfStable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1568
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeStable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAfStable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1572
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1575
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1579
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkAeSearching(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1589
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1590
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreFlashStartTime:J

    sub-long/2addr v1, v3

    if-eqz v0, :cond_2

    .line 1591
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    .line 1592
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldDoTriggerForCapturing()Z

    move-result p1

    const-string v0, ", mAeChangeTimeOut: "

    if-eqz p1, :cond_1

    .line 1593
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1594
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1595
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 1596
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeSearching triggerAEPreCapturing mAeChangeMinDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1600
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1601
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1602
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1603
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAeSearching triggerAeAfStableForCapturing mAeChangeMinDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 2527
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-eqz v0, :cond_0

    .line 2528
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "No need to check shot2shot when it is continuous shot"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2532
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkPreAECaptureOnStarted(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    if-nez v0, :cond_1

    .line 2533
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkPreAECaptureOnStarted, mNeedCaptureSound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mNeedCaptureSound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "camera_click.ogg"

    .line 2534
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    .line 2537
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2538
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 2539
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 2540
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    if-ne v3, v1, :cond_3

    const-string p1, "Shot2ShotOn"

    .line 2542
    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 2543
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady()V

    .line 2544
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->access$2700(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;)V

    .line 2545
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 2546
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady()V

    goto :goto_1

    .line 2548
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private closeSession()V
    .locals 4

    .line 2698
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    if-eqz v0, :cond_0

    .line 2699
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2703
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->close()V

    .line 2704
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 2705
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2708
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 2710
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2716
    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2717
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSession mSession, current thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2718
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 2720
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 2721
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 2722
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method private createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1213
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 1217
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 1218
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createCaptureSession start."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 1220
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createCaptureSession end."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createCaptureSessionByConfigurations wait"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1226
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->waitState()V

    .line 1227
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createCaptureSessionByConfigurations wait done"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createCaptureSessionByConfigurations Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDeferredSession, deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 896
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 p2, 0x0

    .line 897
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    .line 898
    iget-object p2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->channel:Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 900
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    move-result p0

    return p0
.end method

.method private createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 951
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 952
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 955
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession previewAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", supportAuxPreview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 v4, v3, 0x1

    .line 958
    iget-boolean p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_1

    .line 959
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    .line 960
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPhotoSession auxAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 964
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_5
    if-nez v0, :cond_6

    return v1

    .line 971
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_7

    .line 972
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result p1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    .line 974
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 975
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 977
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_9

    .line 978
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v1

    .line 979
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    aput-object p1, v5, v2

    .line 978
    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_4

    .line 981
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    new-array v4, v2, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 984
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_a

    .line 985
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 987
    :cond_a
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createPhotoSession] result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] createSession start, deferredData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setSessionCreate(Z)V

    .line 909
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 910
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createPhotoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    move-result p1

    goto/16 :goto_2

    :cond_0
    if-ne v0, v2, :cond_2

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v0

    .line 913
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 916
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v0

    .line 919
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 922
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 925
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoHighSpeed:createVideoSession"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 927
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 928
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    move v1, v3

    goto :goto_1

    .line 931
    :cond_3
    new-instance v0, Landroid/util/Range;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 932
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 934
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z

    move-result p1

    goto :goto_2

    .line 936
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession unknown session type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move p1, v3

    .line 938
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setSessionCreate(Z)V

    if-eqz p1, :cond_5

    goto :goto_3

    .line 942
    :cond_5
    iput v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 944
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] createSession end, session type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", success:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return p1
.end method

.method private createVideoSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createVideoSession"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 997
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_0

    .line 999
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1000
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createVideoSession previewAdded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", supportBackgroundPreview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    xor-int/lit8 v4, v3, 0x1

    .line 1003
    iget-boolean v5, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_1

    .line 1004
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1005
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createVideoSession backgroundAdded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 1009
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_5
    if-eqz p1, :cond_6

    .line 1013
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_6
    if-nez v0, :cond_7

    return v2

    .line 1019
    :cond_7
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz p1, :cond_9

    .line 1021
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_8

    .line 1022
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1023
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v5

    new-array v6, v4, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v6, v3

    .line 1022
    invoke-virtual {p1, v4, v5, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_4

    .line 1025
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1026
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v5

    new-array v3, v3, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v3, v1

    .line 1025
    invoke-virtual {p1, v4, v5, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_4

    .line 1029
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_a

    .line 1030
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1031
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v5

    new-array v3, v3, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1030
    invoke-virtual {p1, v4, v5, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_4

    .line 1033
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1034
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v3

    new-array v1, v1, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v1, v2

    .line 1033
    invoke-virtual {p1, v4, v3, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1037
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v1, :cond_b

    .line 1038
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->isBGEnable()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->configureBGService(ZI)V

    .line 1040
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1041
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->upadetMultiCropZoomRatio()V

    .line 1043
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_d

    .line 1044
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1046
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createCaptureSessionByConfigurations(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    move-result p1

    .line 1047
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createVideoSession] sessionType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",result:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",configurations:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mIsPrepareSuccess: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1898
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 1899
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p1

    const/4 v0, 0x1

    aput p1, p0, v0

    return-object p0
.end method

.method private doAFAndCapture()V
    .locals 3

    .line 2054
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] doAFAndCapture ++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2057
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 2059
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2060
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 2061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2292
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    goto :goto_0

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2301
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAddPreviewCallBack, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataCallBack:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isPreviewStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1999
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doAutoFocus while preview not started."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2000
    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    return-void

    .line 2004
    :cond_1
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$4;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 2022
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 2023
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_0

    .line 2025
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 2028
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v4, :cond_3

    .line 2029
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v6, v1

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v5, p1, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_1

    .line 2031
    :cond_3
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v5, v3, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v1

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 2033
    :goto_1
    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    .line 2034
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v6, v3, [Landroid/view/Surface;

    aput-object v4, v6, v1

    invoke-virtual {v5, p1, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 2036
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "doAutoFocus"

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2037
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2038
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2037
    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2040
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->startAF()V

    .line 2041
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_5

    .line 2043
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    .line 2044
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2046
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 2049
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_2
    return-void

    .line 1995
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAutoFocus is error, mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParameters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doAutoFocusPreAFCapture()V
    .locals 3

    .line 2077
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] doAutoFocusPreAFCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2078
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2080
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void

    :catch_0
    move-exception v0

    .line 2082
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2083
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 2084
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private doCancelAutoFocus()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2159
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2160
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 2162
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2165
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 2166
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v6, v4

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v5, v0, v6}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    goto :goto_1

    .line 2168
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v5, v2, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v4

    invoke-virtual {v3, v0, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 2170
    :goto_1
    iget-boolean v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v3, :cond_3

    .line 2171
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v2, v2, [Landroid/view/Surface;

    aput-object v3, v2, v4

    invoke-virtual {v5, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 2173
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doCancelAutoFocus"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2174
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2175
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->cancelAF()V

    .line 2176
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_4

    .line 2178
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    .line 2179
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, p0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2181
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 2185
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 2187
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2
    return-void

    .line 2155
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelAutoFocus is error, mSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelCapture()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1676
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCancelCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCancelCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1681
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 1683
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1684
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1685
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1686
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1688
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCancelCapture exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1690
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1404
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1405
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1409
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    .line 1410
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 1411
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1412
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashFacade(Ljava/lang/String;)V

    .line 1413
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1414
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCaptureMTK()V

    goto :goto_0

    .line 1416
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCaptureSprd()V

    :goto_0
    return-void
.end method

.method private doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    .locals 7

    .line 1857
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1865
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] [doCapture] use YUV Surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1867
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] [doCapture] use Jpeg Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1872
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1874
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isThumbnailPostView()Z

    move-result v1

    .line 1875
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v6

    invoke-interface {v3, v1, v4, v5, v6}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getCaptureThumbnailSource(ZJZ)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1876
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1877
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1880
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1881
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1884
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance][doCapture] START session start to capture, thumbnailSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "capture"

    .line 1885
    invoke-static {v2}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1886
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1887
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1888
    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->currentParameter(Lcom/transsion/camera/adapter/CameraParameters;)[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[I)V

    .line 1889
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance][doCapture] END."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1891
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1892
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 1859
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1860
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void
.end method

.method private doCaptureMTK()V
    .locals 1

    .line 1627
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1628
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1629
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    goto :goto_0

    .line 1630
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->preScreenFlashCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1631
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreFlashCapture(Z)V

    goto :goto_0

    .line 1633
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreCaptureMTK()V

    goto :goto_0

    .line 1636
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :goto_0
    return-void
.end method

.method private doCaptureSprd()V
    .locals 3

    .line 1654
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] [doCaptureSprd] usePreAECaptureFlow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCurShutterPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isAFTriggered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isAFTriggered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , aeStateFlashRequired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 1655
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , aeLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1656
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1657
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 1658
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCurShutterPriority:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isAFTriggered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1659
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mUsePreAECaptureForSprd:Z

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    goto :goto_0

    .line 1663
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1664
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1665
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAFAndCapture()V

    goto :goto_0

    .line 1667
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    goto :goto_0

    .line 1670
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :goto_0
    return-void
.end method

.method private doClearFrameResultCallback()V
    .locals 0

    .line 2287
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearFrameResultCallback()V

    return-void
.end method

.method private doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;I)V
    .locals 5

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/Surface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 1907
    invoke-interface {v4}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1906
    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createBurstRequest(II[Landroid/view/Surface;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1908
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1910
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doContinuousCapture exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doEnableShutterSound(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-nez v1, :cond_0

    .line 659
    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_START_RECORDING_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    sget-object v1, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_STOP_RECORDING_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SoundPoolDebug] enableShutterSound load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    return-void
.end method

.method private doEnableVideoAutoFlash(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2305
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setRecordingHint(Z)V

    if-eqz p1, :cond_0

    .line 2307
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2308
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->aeStateFlashRequired()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    goto :goto_0

    .line 2311
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setFlashRequiredInAutoMode(Z)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2315
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_2
    return-void
.end method

.method private doOnPreAfFocused(Z)V
    .locals 3

    .line 2095
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] PreAF done, [onAutoFocus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsCancelCapture:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2097
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    .line 2098
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V

    .line 2100
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsCancelCapture:Z

    if-eqz p1, :cond_1

    return-void

    .line 2103
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2105
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 2106
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doParameterRepeatingRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doParameterRepeatingRequest mSessionState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1256
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1257
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    :cond_0
    return-void
.end method

.method private doPreAECapture()V
    .locals 7

    .line 1796
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1802
    :cond_0
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    .line 1813
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 1838
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1839
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v5, v2

    .line 1840
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1839
    invoke-virtual {v4, v3, v5}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v4, v3, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1845
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] doPreAECapture"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1846
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1847
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1846
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1848
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1849
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 1798
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPreCapture is error, mSession is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1799
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1851
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1852
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 6

    .line 2112
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 2114
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 2115
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doPreAF is error, mSession is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2118
    :cond_0
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$5;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    .line 2135
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2136
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v5, v4, v1

    .line 2137
    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    aput-object p1, v4, v2

    .line 2136
    invoke-virtual {v3, v2, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_0

    .line 2139
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v3, v2, [Landroid/view/Surface;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 2142
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] doPreAFCapture"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2143
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2143
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2145
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2146
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2148
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 2149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doPreAFCapture()V
    .locals 1

    .line 2091
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAF(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method

.method private doPreCaptureMTK()V
    .locals 1

    .line 1641
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->usePreAECaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    goto :goto_0

    .line 1645
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAFCapture()V

    goto :goto_0

    .line 1648
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V

    :goto_0
    return-void
.end method

.method private doPreFlashCapture(Z)V
    .locals 3

    .line 1426
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1433
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] doPreFlashCapture start, needSetParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mAeChangeMinDuration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAeChangeTimeOut: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreFlashStartTime:J

    .line 1440
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldDoTriggerForCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeStableForCapturing:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCheckAeAfStableForCapturing:Ljava/lang/Runnable;

    :goto_0
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    int-to-long v1, v1

    .line 1440
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1427
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doPreFlashCapture is error, mSession is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1428
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1443
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    .line 1444
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 0

    .line 2239
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method private doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 2255
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 2263
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doSetAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .locals 0

    .line 2231
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method private doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 2193
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method private doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 0

    .line 2243
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method private doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 831
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 832
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    return-void

    .line 837
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 838
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->finalizeConfigSession()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 841
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 p1, 0x0

    .line 842
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Z

    :goto_0
    return-void
.end method

.method private doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .locals 0

    .line 2235
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    return-void
.end method

.method private doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 2197
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method private doSetGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 2320
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.method private doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 0

    .line 2227
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 760
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 3

    .line 764
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_0

    goto :goto_3

    .line 770
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v0

    goto :goto_1

    :sswitch_0
    const-string v1, "VideoRecord.ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "camera_click.ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "VideoStop.ogg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 781
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doShutterSoundPlay error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 775
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    goto :goto_2

    .line 772
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    goto :goto_2

    .line 778
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 766
    invoke-interface {p2, v1}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a2434e2 -> :sswitch_2
        -0x6980d471 -> :sswitch_1
        0x39a9fd2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .locals 2

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1709
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "doStartContinuousCapture error, mSession is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1710
    iget-object p0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1714
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    .line 1715
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    .line 1716
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCSPictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;

    .line 1718
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;I)V

    return-void
.end method

.method private doStartFaceDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2205
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    .line 2206
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 2208
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    return-void
.end method

.method private doStartGenderAttributeDetection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2324
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method private doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSetRepeatingRequestTime:J

    .line 1246
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1247
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1248
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 p1, 0x1

    .line 1249
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    .line 1250
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    return-void
.end method

.method private doStopContinuousCapture()V
    .locals 3

    .line 1722
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1723
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doStopContinuousCapture is error, mSession is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1726
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mInContinuousCapture:Z

    if-nez v0, :cond_1

    .line 1727
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "do nothing if it isn\'t in continuous capture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1731
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1732
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1733
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1734
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1736
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopContinuousCapture exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doStopContinuousCount()V
    .locals 2

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStopContinuousCount"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1741
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    return-void
.end method

.method private doStopFaceDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2212
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    .line 2213
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 2215
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V

    return-void
.end method

.method private doStopGenderAttributeDetection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2328
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method private doStopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 1396
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStopped()V

    .line 1398
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAbortCaptureLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 0

    .line 2251
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method private doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 2259
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method private doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 2267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method private doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1915
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 1917
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doVideoSnapShot is error, mSession is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1921
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 1925
    :cond_1
    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    .line 1926
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object p1

    .line 1927
    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object p1

    .line 1928
    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1929
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1930
    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setSatPictureSize(Landroid/util/Size;)V

    .line 1933
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_3

    .line 1934
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use YUV Surface"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1935
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    .line 1937
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCapture use Jpeg Surface"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1938
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1940
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 1942
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 1943
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    new-array v2, v2, [Landroid/view/Surface;

    aput-object v0, v2, v4

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 1945
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1946
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    .line 1947
    invoke-interface {p0, v4, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onThumbNailTypeConfirmed(I[I)V

    :cond_5
    return-void

    .line 1922
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "params not ready, do not config now"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private finalizeConfigSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeConfigSession mSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFinalizeConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 857
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    if-nez v0, :cond_7

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 859
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeConfigSession previewConfig already has surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 867
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2

    .line 868
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 870
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession auxConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 873
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 874
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_4

    .line 875
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 877
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeConfigSession backgroundConfig already has surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 884
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 885
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsFinalizeConfigured:Z

    const/4 v0, 0x0

    .line 886
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mDeferredOutputConfigs:Ljava/util/List;

    :cond_7
    :goto_2
    return-void
.end method

.method private flashStyleOneStage()Z
    .locals 1

    .line 1776
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object p0

    const-string v0, "one_stage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getPhotoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/adapter/CameraProxy$DeferredData;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvPreview(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdDumpRawSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyy [getPhotoOutputConfigurations] previewSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/16 v2, 0x23

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPhotoOutputConfigurations] mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mImageSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mYuvImageSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewYUVReader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 1069
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 1071
    iget-object v1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 1072
    iget v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    if-nez v2, :cond_2

    .line 1074
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v3, Landroid/view/SurfaceHolder;

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1076
    :cond_2
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 1081
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 1082
    iget-boolean v1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportAuxPreview:Z

    if-eqz v1, :cond_5

    .line 1083
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->auxPreviewSize:Landroid/util/Size;

    .line 1084
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_6

    .line 1088
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1092
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_8

    .line 1096
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1097
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_8
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getCreateSessionThumbnailSource()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1103
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1104
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1109
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhotoOutputConfigurations] use source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needThumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needThumbnailSurface(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needFastThumb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1113
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->needFastThumbSurface(ILjava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , mFastThumbSurface:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1112
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    return-object v0
.end method

.method private getSuitableRange(Ljava/util/List;I)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2679
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSuitableVideoFrameRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object p1

    .line 2681
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2682
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuitableRange, limitFpsRange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2683
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLimitFpsRange()Landroid/util/Range;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getVideoOutputConfigurations(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/adapter/CameraProxy$DeferredData;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVideoSurface] mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRecordSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mImageSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deferredData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPrepareSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1142
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getDataFlowType()I

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvPreview(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdDumpRawSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/16 v3, 0x23

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    :cond_0
    if-eqz p1, :cond_6

    .line 1149
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_c

    .line 1150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1151
    :try_start_1
    iget-object v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSize:Landroid/util/Size;

    .line 1152
    iget v3, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->previewSurfaceType:I

    if-nez v3, :cond_1

    .line 1154
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v4, Landroid/view/SurfaceHolder;

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1156
    :cond_1
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v4, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v2, :cond_2

    .line 1159
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v2, :cond_3

    .line 1162
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1165
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_4
    iget-boolean v2, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->supportBackgroundPreview:Z

    if-eqz v2, :cond_5

    .line 1168
    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$DeferredData;->backgroundPreviewSize:Landroid/util/Size;

    .line 1169
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, p1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_b

    .line 1172
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1173
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 1177
    :cond_6
    :try_start_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz p1, :cond_c

    .line 1178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1179
    :try_start_3
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz p1, :cond_7

    .line 1181
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_8

    .line 1184
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1187
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/IBGSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_a

    .line 1190
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_b

    .line 1193
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewDataListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1194
    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_1
    move-object v0, v1

    :cond_c
    return-object v0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 1199
    :goto_2
    :try_start_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoOutputConfigurations Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_0
    move-object v0, v1

    :catchall_1
    return-object v0
.end method

.method private isAFSupport()Z
    .locals 1

    .line 1694
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto"

    .line 1696
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-picture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-video"

    .line 1697
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isAutoWatermarkOn()Z
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1988
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRunSMVRMode(I)Z
    .locals 0

    .line 2690
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedSMVRRequestParams(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doAFAndCapture$6(Z)V
    .locals 1

    .line 2065
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doOnPreAfFocused(Z)V

    .line 2066
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2068
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] doAFAndCapture --"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2069
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2071
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 662
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 664
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    .line 666
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$doEnableShutterSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 671
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 673
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    .line 675
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$doEnableShutterSound$2(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 680
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 682
    :cond_0
    iput p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    .line 684
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$doPreAECapture$4()V
    .locals 2

    .line 1803
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] PreAE done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1804
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onAEPreCaptureDone] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1807
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    .line 1611
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] triggerAEPreCapturing done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1612
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1615
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    return-void

    .line 1619
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAutoFocusPreAFCapture()V

    goto :goto_0

    .line 1622
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapturePictureCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startRecordingRequest$5(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
    .locals 3

    .line 1975
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingRequest, onPlayDone, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1978
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAutoWatermarkOn()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1979
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mResponseHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1981
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    :goto_0
    return-void
.end method

.method private ledFlashOff()Z
    .locals 1

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    .line 1785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "off"

    .line 1786
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private ledFlashOn()Z
    .locals 1

    .line 1780
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private needFastThumbSurface(ILjava/lang/String;)Z
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicBackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    .line 1128
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicFrontId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFastThumbSurface(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1129
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needFastThumbSurface, highDefinition on, source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private needThumbnailSurface(I)Z
    .locals 0

    .line 1123
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needThumbnailSurface(I)Z

    move-result p0

    return p0
.end method

.method private needTriggerPreCapture()Z
    .locals 4

    .line 1746
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1749
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->shouldTriggerPreCaptureAccordingFlashFacade()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 1750
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->needTriggerPreCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] needTriggerPreCapture, flashFacade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1752
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashFacade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flashStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1753
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", superFlash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1754
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenFlash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1755
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 1756
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", aeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 1757
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAeResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", afState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    .line 1758
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getLastAfState()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1751
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private notifySession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1232
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1233
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySession mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1234
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 1235
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private notifySessionFail()V
    .locals 1

    const/4 v0, 0x2

    .line 1239
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionState:I

    .line 1240
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.method private preScreenFlashCapture()Z
    .locals 1

    .line 1421
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->screenFlashOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ledFlashOff()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private screenFlashOn()Z
    .locals 1

    .line 1790
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setRepeatingRequest()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest mSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSessionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecorderState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;->onPreview(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 1276
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1278
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSession is null in setRepeatingRequest"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1282
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 1286
    :cond_2
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const-string v3, "[setRepeatingRequest] error:"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v1, :cond_5

    .line 1288
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_3

    .line 1289
    iget-boolean v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    new-array v4, v4, [Landroid/view/Surface;

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v4, v5

    .line 1290
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1289
    invoke-virtual {v0, v1, v6, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 1292
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isDoStartPreview:Z

    new-array v4, v1, [Landroid/view/Surface;

    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1295
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    if-eqz v2, :cond_4

    .line 1296
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1298
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 1301
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 1303
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_5
    const/4 v6, 0x3

    if-ne v2, v4, :cond_b

    .line 1307
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v2

    .line 1308
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_6

    const-string v2, "1"

    .line 1309
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1310
    new-instance v2, Landroid/util/Range;

    const/16 v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v8, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1311
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    goto :goto_1

    .line 1313
    :cond_6
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object v2

    .line 1314
    iget v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v2, v7}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getSuitableRange(Ljava/util/List;I)Landroid/util/Range;

    move-result-object v2

    .line 1315
    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1318
    :goto_1
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v2, :cond_8

    .line 1319
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v2, :cond_7

    new-array v4, v4, [Landroid/view/Surface;

    .line 1320
    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v4, v5

    aput-object v2, v4, v1

    invoke-virtual {v0, v6, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-array v1, v1, [Landroid/view/Surface;

    .line 1323
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_2

    .line 1327
    :cond_8
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewYUVReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_9

    new-array v4, v4, [Landroid/view/Surface;

    .line 1328
    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v7, v4, v5

    .line 1329
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1328
    invoke-virtual {v0, v6, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-array v1, v1, [Landroid/view/Surface;

    .line 1331
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 1336
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest mBackgroundPreviewSurface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mBackgroundSurfaceNeedShow: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBackgroundSurfaceModeSupport: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    if-eqz v2, :cond_a

    .line 1340
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1344
    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    .line 1346
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_b
    if-ne v2, v6, :cond_f

    .line 1350
    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isRunSMVRMode(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1351
    iget-boolean v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-nez v7, :cond_c

    .line 1352
    new-instance v7, Landroid/util/Range;

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_3

    .line 1354
    :cond_c
    new-instance v7, Landroid/util/Range;

    iget v8, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1356
    :goto_3
    invoke-virtual {v0, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    .line 1359
    iget-boolean v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-eqz v7, :cond_d

    new-array v4, v4, [Landroid/view/Surface;

    .line 1360
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v8, v4, v5

    aput-object v7, v4, v1

    invoke-virtual {v0, v6, v4}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_4

    :cond_d
    new-array v1, v1, [Landroid/view/Surface;

    .line 1363
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    aput-object v4, v1, v5

    invoke-virtual {v0, v6, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_4
    if-eqz v2, :cond_e

    .line 1368
    :try_start_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 1370
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1373
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 1375
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1377
    :try_start_4
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSessionHighSpeed:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionRepeatCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 1379
    :try_start_5
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeatingBurst] error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1382
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_5

    .line 1386
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeatingRequest] unknown session type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1388
    :goto_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeatingRequest] PreviewSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1283
    :cond_10
    :goto_6
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "params not ready, do not config now"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setTagValue(Ljava/lang/String;)V
    .locals 2

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method private shouldDoTriggerForCapturing()Z
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->afSearchStateAvailable()Z

    move-result v0

    .line 1450
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->isAFSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldTriggerPreCaptureAccordingFlashFacade()Z
    .locals 1

    .line 1770
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->flashStyleOneStage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->ledFlashOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->screenFlashOn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1959
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1967
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    const/4 v0, 0x0

    .line 1969
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallbackTmp:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1970
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 1972
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->setRepeatingRequest()V

    .line 1974
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const-string p1, "VideoRecord.ogg"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void

    .line 1962
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecordingRequest is error, mSession or surface is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "no surface or session"

    .line 1963
    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private stopRecordingRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1952
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRecordingRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1953
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    .line 1954
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V

    const-string v0, "VideoStop.ogg"

    .line 1955
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method private updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 1584
    aget v0, p1, v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeMinDuration:I

    const/4 v0, 0x1

    .line 1585
    aget p1, p1, v0

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAeChangeTimeOut:I

    return-void
.end method

.method private updateSurface(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 2

    .line 805
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getCameraDataType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    .line 806
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewSurface:Landroid/view/Surface;

    .line 807
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getAuxPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxPreviewSurface:Landroid/view/Surface;

    .line 808
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getBackgroundPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundPreviewSurface:Landroid/view/Surface;

    .line 809
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 810
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getYuvImageSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 811
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getThumbnailSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mThumbnailSurface:Landroid/view/Surface;

    .line 812
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getFastThumbSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mFastThumbSurface:Landroid/view/Surface;

    .line 814
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSessionType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 821
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 822
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 823
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 824
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    const/4 p1, 0x1

    .line 825
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    goto :goto_1

    .line 815
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecordSurface:Landroid/view/Surface;

    .line 816
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameRate()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameRate:I

    .line 817
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameHeight:I

    .line 818
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->getVideoFrameWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mVideoFrameWidth:I

    .line 819
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraDataChannel;->isPrepareSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPrepareSuccess:Z

    :goto_1
    return-void
.end method

.method private usePreAECaptureFlow()Z
    .locals 0

    .line 1704
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void
.end method

.method public autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 0

    .line 334
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAutoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelAutoFocus()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelTakePicture()V
    .locals 0

    .line 301
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCancelCapture()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearFrameResultCallback()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doClearFrameResultCallback()V

    return-void
.end method

.method public clearStreamIdResultCallback()V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->clearStreamIdCallback()V

    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableShutterSound(Z)V

    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 794
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doEnableVideoAutoFlash(ZZ)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 796
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    return-object p0
.end method

.method public getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    return-object p0
.end method

.method public init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init] cs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 165
    new-instance v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    .line 166
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 168
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    .line 171
    new-instance p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    return-void
.end method

.method public isMTKCaptureFlow()Z
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMTKCaptureFlow()Z

    move-result p0

    return p0
.end method

.method public isReleased()Z
    .locals 0

    .line 730
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    return p0
.end method

.method public isVssSupported()Z
    .locals 0

    .line 694
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsLegacyDevice:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "preparePreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when preparePreview start :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 180
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->createDeferredSession(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", priority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method registerSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2275
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method release()V
    .locals 5

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 705
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 706
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mRecorderState:Z

    const-string v0, "VideoStop.ogg"

    .line 707
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->closeSession()V

    .line 711
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 712
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SoundPoolDebug] camera proxy release, mSoundPlayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mShutterSoundLoaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    if-eqz v4, :cond_1

    .line 717
    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterClickSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 718
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStartVideoRecordingSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 719
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mStopVideoRecordingSampleId:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 721
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShutterSoundLoaded:Z

    .line 722
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 723
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->release()V

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 723
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSoundPlayer:Lcom/transsion/camera/utils/sound/IActionSound;

    return-void
.end method

.method public setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimalEyeDetectCallback, callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method public setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V

    return-void
.end method

.method public setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraBVCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method public setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setCameraDataChannel start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 385
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCameraDataChannel end, process time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setCameraParameters start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setCameraParameters end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeDetectionCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    return-void
.end method

.method public setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    return-void
.end method

.method public setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    return-void
.end method

.method public setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    return-void
.end method

.method public setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHumanDetCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doSetHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    return-void
.end method

.method public setModeThumbnailSource(I)V
    .locals 0

    .line 562
    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mModeThumbnailSource:I

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .line 740
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mIsPause:Z

    return-void
.end method

.method public setPictureGPSLocation(Landroid/location/Location;)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegGPSLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setPictureOrientation(I)V
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setJpegOrientation(I)V

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mParameters:Lcom/transsion/camera/adapter/CameraParameters2Impl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoOrientation(I)V

    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "VideoRecord.ogg"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "VideoStop.ogg"

    goto :goto_0

    :cond_1
    const-string p1, "camera_click.ogg"

    .line 756
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .locals 0

    .line 745
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartFaceDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 498
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startGenderAttributeDetection()V
    .locals 0

    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartGenderAttributeDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 470
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when startPreview start :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 197
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStartPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 435
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->startRecordingRequest(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopContinuousShot()V
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopContinuousCapture()V

    return-void
.end method

.method public stopContinuousShotCount()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopContinuousCount()V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopFaceDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 507
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopGenderAttributeDetection()V
    .locals 0

    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopGenderAttributeDetection()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 489
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPreview()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPreview start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doStopPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 212
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 216
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 444
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->stopRecordingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopRepeating()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRepeating start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRepeating end, process time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iget-object v1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->access$100(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureStateMonitor:Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;

    iput-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doCapture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterDualLensCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterFrameResultCallback, callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method unRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterSettingPreviewCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2283
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mSettingPreviewDataCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doUnRegisterSettingPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    return-void
.end method

.method public unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mCaptureResultMonitor:Lcom/transsion/camera/adapter/CaptureResultMonitor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    return-void
.end method

.method public unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mShot2ShotCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxSurfaceModeSupport(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceModeSupport:Z

    return-void
.end method

.method public updateAuxSurfaceStatus(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mAuxSurfaceNeedShow:Z

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateBackgroundSurfaceModeSupport(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceModeSupport:Z

    return-void
.end method

.method public updateBackgroundSurfaceStatus(Z)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBackgroundSurfaceStatus show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mBackgroundSurfaceNeedShow:Z

    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doParameterRepeatingRequest()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 551
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 0

    .line 310
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->doVideoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
