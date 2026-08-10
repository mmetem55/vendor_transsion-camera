.class public abstract Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "TD;>;D:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Lcom/transsion/camera/app/common/mode/CameraMode<",
        "TT;TD;>;",
        "Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;"
    }
.end annotation


# static fields
.field private static final DELAY_CAPTURE_TIME:I = 0x12c

.field private static final MACRO_CAMERA_ACTIVE:I = 0x1

.field private static final MAX_SHUTTER_CLICK_INTERVAL:J = 0x7d0L

.field private static final MESSAGE_DELAY_CAPTURE:I = 0x1

.field private static final MESSAGE_DELAY_LONG_CLICK_END:I = 0x2

.field protected static final RATIO_18_75_9:D = 2.0833333333333335

.field protected static final RATIO_18_9:D = 2.0

.field protected static final RATIO_19_9:D = 2.111111111111111

.field public static final RATIO_1_1:D = 1.0

.field protected static final RATIO_20_5_9:D = 2.2777777777777777

.field public static final RATIO_4_3:D = 1.3333333333333333

.field public static final SHUTTER_ACTION_CANCEL:I = 0x4

.field public static final SHUTTER_ACTION_CLICK:I = 0x2

.field public static final SHUTTER_ACTION_DOWN:I = 0x0

.field public static final SHUTTER_ACTION_LONG:I = 0x3

.field public static final SHUTTER_ACTION_UP:I = 0x1

.field private static final SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200

.field private static final THUMBNAIL_JPEG_QUALITY:I = 0x4b

.field private static final THUMBNAIL_TARGET_WIDTH:I = 0x100


# instance fields
.field private mAutoBackLimitBV:I

.field private mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCaptureAnimationByThumbnail:Z

.field private mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

.field protected mCaptureOrientation:I

.field private volatile mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

.field protected mContinuousShotSupport:Z

.field private mCurrentFocusState:Ljava/lang/String;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mIsAdaptLowPlatform:Z

.field private mIsBgCaptureSupport:Z

.field private mIsLowLight:Z

.field protected mIsNeedAppend:Z

.field private mIsShowSelfTimer:Z

.field private mIsShowSelfTimerDelay:Z

.field private mIsSupportPostView:Z

.field private mIsTimeLongAlgoSceen:Z

.field private mLastMacroSwitchValue:I

.field private mLastStreamId:I

.field private mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

.field private mNeedCreateVideoSurface:Z

.field private mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private volatile mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mPreOrientation:I

.field private mQCSampleId:I

.field private mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private mQCSoundLoaded:Z

.field private final mQCSoundLock:Ljava/lang/Object;

.field private mResumed:Z

.field private mSendTakePictureSuccess:Z

.field private mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private volatile mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mShot2seeSyncThumbnail:Z

.field private mShot2shotMaxCacheNumber:I

.field private mShot2shotMaxNumberForEnableUI:I

.field private mShutterActionState:I

.field private mShutterClickInterval:J

.field private mShutterLongClick:Z

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mSwitchByUser:Z

.field private mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mThumbNailType:I


# direct methods
.method public static synthetic $r8$lambda$LY2pli-bMXBZIkNPsu2Ynwsr7yc(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SG-Esq_aESnjH65KZXRDCeBWYss(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->lambda$loadQCSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonPhotoMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    const-string v1, "/product/media/audio/ui/camera_click.ogg"

    .line 163
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 237
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 115
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    .line 122
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 123
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 124
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 125
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 126
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 127
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 141
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "INACTIVE"

    .line 142
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    .line 143
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    .line 146
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    const/4 v1, 0x2

    .line 147
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    .line 148
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    .line 149
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    .line 156
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 157
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 159
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    .line 170
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    .line 479
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 480
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    .line 481
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;ILandroid/graphics/Bitmap;)I
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    return p0
.end method

.method private actionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 2060
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SHUTTER_ACTION_CANCEL"

    return-object p0

    :cond_1
    const-string p0, "SHUTTER_ACTION_LONG"

    return-object p0

    :cond_2
    const-string p0, "SHUTTER_ACTION_CLICK"

    return-object p0

    :cond_3
    const-string p0, "SHUTTER_ACTION_UP"

    return-object p0

    :cond_4
    const-string p0, "SHUTTER_ACTION_DOWN"

    return-object p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 3

    .line 483
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 484
    :cond_0
    aget p2, p2, v1

    .line 485
    :goto_0
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 488
    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isLowLight(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    .line 490
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->parserValue(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 491
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSatCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 492
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSATStreamIdChanged(III)V

    .line 493
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    return-void

    .line 496
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    if-eq v0, p2, :cond_3

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 498
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastMacroSwitchValue:I

    .line 500
    :cond_3
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 501
    array-length p3, p1

    if-lez p3, :cond_4

    .line 502
    aget p1, p1, v1

    .line 503
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    if-eq p3, p1, :cond_4

    .line 504
    invoke-virtual {p0, p3, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSATStreamIdChanged(III)V

    .line 505
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mLastStreamId:I

    :cond_4
    return-void
.end method

.method private doProcessingMedia(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1175
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1178
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 1179
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    xor-int/2addr p0, v1

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateProcessingThumbUri(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1182
    :cond_0
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCameraIdForOpen(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;
    .locals 0

    .line 1931
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1932
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 598
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 599
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 600
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 601
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    sub-double v1, p2, v1

    .line 602
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getShutterTypeBySelfTimerValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "off"

    .line 426
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    return p0
.end method

.method private handleStorageUnmounted()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1417
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleStorageUnmounted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1422
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->terminateContinuousShot()V

    return-void
.end method

.method private isInvalid([B)Z
    .locals 4

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 1214
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1218
    aget-byte v3, p1, v2

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private isLowLight(I)Z
    .locals 0

    .line 2065
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mAutoBackLimitBV:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSatCamera()Z
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 512
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$loadQCSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 1987
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1988
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 1989
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 1991
    :cond_0
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    .line 1993
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

.method private loadQCSound()V
    .locals 3

    .line 1980
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1986
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 1995
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    return-void

    .line 1981
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] loadQCSound sound load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCurModeSupportQC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onFakePostViewData()V
    .locals 2

    .line 1139
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parserValue(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 517
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCCTValue(Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    .line 518
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getTintValue(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    .line 519
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCCTValue(I)V

    .line 520
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTintValue(I)V

    return-void
.end method

.method private processQCSaveData([BZ)I
    .locals 1

    .line 2021
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendSaveData([BZLcom/transsion/camera/app/common/mode/ICameraMode;)I

    move-result p0

    return p0
.end method

.method private processQCThumbnail(ILandroid/graphics/Bitmap;)I
    .locals 1

    .line 2014
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2017
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendThumbnailView(ILandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/mode/ICameraMode;)I

    move-result p0

    return p0
.end method

.method private processQCUpAction()I
    .locals 4

    .line 2028
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2030
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]processQCUpAction return, needQCValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2034
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    if-eqz v0, :cond_2

    .line 2035
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_sound"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 2036
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2037
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[QuickCapture]processQCUpAction do nothing if shutter is not on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 2040
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[QuickCapture]processQCUpAction play sound"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    :cond_2
    return v1
.end method

.method private queryFlashValue()Ljava/lang/String;
    .locals 2

    .line 2072
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2073
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 2076
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private releaseQCSound()V
    .locals 3

    .line 1999
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2005
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    if-eqz v2, :cond_1

    .line 2006
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    :cond_1
    const/4 v1, 0x0

    .line 2008
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    const/4 v1, 0x0

    .line 2009
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 2010
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2000
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] releaseQCSound return, sound load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSoundLoaded:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showContinuousShotNotSupportHint()V
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getContinuousShotNotSupportMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showCSNotSupportHint(Lcom/transsion/camera/app/common/ui/HintInfo;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected autoWatermark()Z
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_0

    .line 1272
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "autoWatermark mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "key_auto_watermark"

    .line 1276
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 1275
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected checkCaptureResult()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkSingleCapture()Z
    .locals 1

    .line 877
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->processQCPictureData()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 1942
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1945
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const-string p0, "key_super_definition"

    .line 1948
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p2, "off"

    .line 1949
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move p1, v1

    :cond_4
    return p1
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 3

    .line 1287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doOnFileSaved] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " needWaitLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPostViewCallbackNumber.get():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1288
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCapturingNumber.get():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getRemainingMediaSize()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "detection err, check,!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 1293
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    if-eqz p3, :cond_2

    .line 1295
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return-void

    .line 1298
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    :cond_3
    return-void
.end method

.method protected doShutterClick(II)Z
    .locals 6

    .line 1106
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]doShutterClick, shutterAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "onShutterClick"

    .line 1107
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 v0, 0x0

    .line 1109
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1111
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Temperature"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1115
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz v0, :cond_1

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 1117
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return v1

    .line 1121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    .line 1122
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1123
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 1124
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_2

    .line 1125
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 1127
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 1128
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 1129
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSendTakePictureSuccess:Z

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture()V

    .line 1131
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 1132
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    :cond_3
    return v1
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCurShutterPriority()I
    .locals 0

    .line 443
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    return p0
.end method

.method public getDataFlowType()I
    .locals 1

    .line 612
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 615
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result p0

    return p0
.end method

.method protected getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v1

    .line 576
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 578
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    :cond_0
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    :goto_0
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 579
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v2, v9, v10}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->ratioEqual(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    move v9, p0

    move-object v0, p1

    move v7, p2

    .line 577
    invoke-static/range {v0 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getLowStorageMessage()Ljava/lang/String;
    .locals 1

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 8

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_camera_zoom"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v3

    .line 453
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v4

    .line 454
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getModeRelation] cameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", zoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", longFocusMiniZoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mainMiniZoom: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz v1, :cond_3

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 464
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-lt v1, v3, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getRestriction(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    .line 472
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 242
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    if-eqz p7, :cond_0

    return-object p5

    :cond_0
    const-string p6, "key_super_definition"

    .line 1877
    invoke-interface {p4, p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1878
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p7

    const-string v0, "0"

    if-eqz p7, :cond_1

    .line 1879
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_2

    .line 1880
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 1881
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_9

    .line 1883
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_2

    .line 1885
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_3

    .line 1886
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getCameraIdForOpen(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_2

    .line 1887
    :cond_3
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->needOpenPortraitCamera(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 1888
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 1889
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->reopenForNormalOrFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    move-object p5, v0

    goto :goto_2

    .line 1891
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportHighDefinition()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    .line 1893
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p0

    .line 1894
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_1
    move-object p5, p0

    goto :goto_2

    .line 1900
    :cond_6
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p0

    .line 1901
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    .line 1907
    :cond_7
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-nez p1, :cond_8

    const-string p1, "on"

    invoke-static {p6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1908
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 1909
    invoke-static {p0, p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    .line 1915
    :cond_8
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    :goto_2
    return-object p5
.end method

.method public getOutputDataType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 594
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getMinPostViewSizeForSupport(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviewSizeMatch64(Ljava/util/List;D)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p1

    move-wide v1, p2

    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .locals 0

    .line 263
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;->NORMAL:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getTargetRatio()D
    .locals 4

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_picture_size"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 563
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 270
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 271
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    .line 272
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p4

    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 273
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOff()I

    move-result p4

    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->setAodCamera(Z)V

    .line 277
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    iget-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->setPhotosDefault(Z)V

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p2, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->setPhotoHelper(Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;)V

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isContinuousShotSupport(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz p2, :cond_1

    .line 280
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p2

    if-nez p2, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    goto :goto_1

    .line 283
    :cond_1
    sget-object p2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "It\'s a project under 4G,force close continuous in monkey scenarios.The continuous shot support is "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    :goto_1
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    .line 286
    invoke-interface {p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->setPhotoWithNormalPreview()V

    const-string p2, "key_picture_size"

    .line 287
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_algorithm_migrate"

    .line 288
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_focus_state"

    .line 289
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_super_definition"

    .line 290
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p2, "key_self_timer_status"

    .line 291
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    const-string p3, "capture_state"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p2, "shot2shot_max_cache_number"

    .line 294
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "shot_to_see_sync_thumbnail"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    .line 296
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "init mShot2shotMaxCacheNumber: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p2, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result p2

    .line 299
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "init isBGEnable: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string p2, "shot2shot_max_number_for_enable_ui"

    .line 302
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    goto :goto_2

    :cond_2
    const/4 p2, -0x1

    .line 305
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    .line 307
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "init mShot2shotMaxNumberForEnableUI: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxNumberForEnableUI:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "continuous_low_temperature_protection"

    const-string p6, "string"

    .line 309
    invoke-virtual {p2, p5, p6, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 311
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "adapt_shot2shot_on_go"

    .line 313
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bg_capture_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    .line 316
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->setBgCaptureSupport(Z)V

    .line 317
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "pro_iso_double"

    invoke-static {p2, p5, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 319
    new-instance p2, Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    .line 320
    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->setIsoDoubled(Z)V

    .line 321
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p2, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mParameters:Lcom/transsion/camera/app/common/mode/ProcesserParameters;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V

    .line 324
    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "create_video_surface_in_photo_mode"

    invoke-static {p2, p4, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    .line 325
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mQCSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const-string p2, "flash_facade_auto_back_limit_brightness_value"

    .line 326
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mAutoBackLimitBV:I

    return-void
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isBgCapturing()Z
    .locals 2

    .line 976
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    if-eqz v0, :cond_1

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isContinuousShotSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isExposureTimeAuto()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isFeatureConfiged(Ljava/lang/String;)Z
    .locals 1

    .line 1865
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v0

    .line 1866
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getTopBarSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    .line 1867
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public isNeedDeviceCaptureSound()Z
    .locals 3

    .line 433
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] isNeedDeviceCaptureSound return, needQCValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isSyncThumbnail()Z
    .locals 1

    .line 995
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2seeSyncThumbnail:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinitionOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isExposureTimeAuto()Z

    move-result p0

    if-nez p0, :cond_0

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

.method protected isTpPictureToVideoSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected needMirror()Z
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1257
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1258
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1263
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method public needQCSaveJpegToFile([BZ)I
    .locals 8

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]needQCSaveJpegToFile, is jpeg valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isBGImage:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_5

    .line 1387
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 1388
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v1

    .line 1390
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v4, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v4

    .line 1391
    sget-object v5, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needQCSaveJpegToFile, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mPostViewCallbackNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_2

    .line 1396
    :cond_1
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v4, :cond_3

    .line 1397
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1398
    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 1402
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 1404
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult()V

    .line 1405
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1408
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    goto :goto_3

    .line 1410
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeCaptureThumbInfo()V

    :goto_3
    return v3
.end method

.method public needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;)I
    .locals 3

    .line 1374
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]needQCUpdateThumbnailView whichThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    .line 1377
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected needQuickCapture(I)I
    .locals 3

    .line 1953
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1954
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1956
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    if-eqz v0, :cond_1

    return v2

    .line 1958
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1959
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    return v2

    .line 1963
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "auto"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsLowLight:Z

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "on"

    .line 1965
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 p0, -0x2

    return p0

    .line 1969
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSuperDefinitionOn()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, -0x3

    return p0

    .line 1973
    :cond_6
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    if-ne p1, p0, :cond_7

    return p0

    :cond_7
    return v1
.end method

.method public notifyPictureTaken([BZI)I
    .locals 5

    .line 885
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCSaveData([BZ)I

    move-result p3

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x0

    if-nez p2, :cond_5

    .line 891
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 892
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    .line 894
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getFirstCaptureInfoType()I

    move-result v1

    .line 895
    sget-object v2, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyPictureTaken, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mPostViewCallbackNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 901
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, p3

    .line 903
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    :cond_3
    move v1, p3

    :goto_1
    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 907
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 909
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult()V

    .line 910
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x0

    invoke-interface {p0, v2, v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_5
    return p3
.end method

.method public notifySwitchByUser(Z)V
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mSwitchByUser:Z

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 1344
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 1346
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-eqz p1, :cond_0

    .line 1347
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->onPreviewStarted()V

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 1350
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->loadQCSound()V

    :cond_1
    return-void
.end method

.method public onConfigAfterStopPreview()V
    .locals 1

    .line 1334
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onConfigAfterStopPreview()V

    .line 1335
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_0
    return-void
.end method

.method public onConfigBeforeStartPreview()V
    .locals 2

    .line 1321
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onConfigBeforeStartPreview()V

    .line 1322
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1324
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    goto :goto_0

    .line 1327
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :goto_0
    return-void
.end method

.method public onContinueShutterStart()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinueShutterStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startContinuousShutter()V

    :cond_0
    return-void
.end method

.method public final onContinuousShotFailed()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1491
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotFailed()V

    return-void
.end method

.method public final onContinuousShotProgress([B)V
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1480
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mContinuousShot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1485
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotProgress([B)V

    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 259
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    return-object p0
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeCaptureCompleted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 971
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    return-void
.end method

.method public onModeCaptureFailed()V
    .locals 3

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeCaptureFailed] there is something wrong when capturing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onCaptureFailed()V

    .line 948
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendFinishThisShot()Z

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult()V

    .line 952
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 953
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->isShotting()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 956
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onModeCaptureFailed] mContinuousShot isShotting"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 954
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onModeCaptureStarted()V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeCaptureStarted] mImageProcessor.onCaptureStarted()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 918
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted()V

    return-void
.end method

.method public onPostViewData([B)V
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostViewData,mPostViewCallbackNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1228
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1234
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,skip, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1237
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v0, 0x21

    .line 1238
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1242
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 8

    .line 1188
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isInvalid([B)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1189
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,isInvalid,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1192
    :cond_0
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostViewData,mPostViewCallbackNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1193
    iget-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    if-eqz p5, :cond_1

    .line 1194
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1197
    :cond_1
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    if-gtz p5, :cond_2

    .line 1199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPostViewData,skip, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v4, 0x100

    const/16 v5, 0x4b

    .line 1202
    iget v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 1203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v7

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 1202
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromYUV([BIIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x16

    .line 1204
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCThumbnail(ILandroid/graphics/Bitmap;)I

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 1208
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    .line 1209
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doProcessingMedia(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onSATStreamIdChanged(III)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_auto_macro_switch"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_auto_macro_switch_toggle"

    const-string v3, "on"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-static {}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getMainRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/transsion/camera/app/common/mode/StreamIdRestriction;->getRestriction(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 538
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    if-ne p3, v2, :cond_3

    .line 539
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_definition"

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 541
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const-string v5, ","

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 542
    :goto_1
    invoke-virtual {p2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string v5, "off"

    .line 543
    invoke-virtual {p2, v4, v5, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_4
    if-ne p3, v2, :cond_6

    .line 547
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 548
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "do not need to update TopBar"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 551
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    goto :goto_2

    .line 555
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    :goto_2
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 372
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "key_picture_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "key_algorithm_migrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-nez p2, :cond_4

    goto :goto_4

    .line 391
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_2
    move v1, v2

    goto :goto_3

    :sswitch_4
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :sswitch_5
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :sswitch_6
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :cond_7
    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 393
    :pswitch_1
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    goto :goto_4

    .line 400
    :pswitch_2
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    .line 401
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    goto :goto_4

    .line 396
    :pswitch_3
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimer:Z

    goto :goto_4

    .line 379
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_8

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    goto :goto_4

    .line 385
    :pswitch_5
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    goto :goto_4

    .line 376
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const-string p1, "on"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmMigrate(Z)V

    :cond_8
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60bf6005 -> :sswitch_3
        -0x42841f76 -> :sswitch_2
        -0x2edaf77e -> :sswitch_1
        0x31f2225f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0xaded465 -> :sswitch_6
        -0x5096c46 -> :sswitch_5
        0x31566b69 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSettingReady()V
    .locals 3

    .line 413
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeBySelfTimerValue(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_algorithm_migrate"

    .line 418
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 417
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmMigrate(Z)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public onShutterCancel()V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture]onShutterCancel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 818
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture]onShutterCancel return, needQCValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 823
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 824
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    .line 825
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    :cond_1
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 669
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture]onShutterClick, curPriority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needQCValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, -0x1

    .line 674
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 v0, 0x2

    .line 675
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doShutterClick(II)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .locals 6

    .line 1013
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x258

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The current available memory is too low,forbidden to take pictures."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1020
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record photo."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return v1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 1024
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageVolume is removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showStorageUnAvailableHint()V

    return v1

    .line 1027
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    if-eqz v0, :cond_3

    .line 1028
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Is long Click, give up this shutter"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1031
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPreOrientation:I

    .line 1032
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1033
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_4
    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    .line 1035
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1036
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result v3

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    if-eq p1, v2, :cond_9

    .line 1039
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1040
    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    .line 1042
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1043
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getTriggerSelfTimerPriority()I

    move-result p1

    if-ne p1, v2, :cond_7

    goto :goto_0

    .line 1046
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_3

    .line 1044
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x8c

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_3

    .line 1041
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x8d

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_3

    .line 1037
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x4f

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1038
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    .line 1048
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1049
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1050
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1052
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 1053
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "capture_state"

    const-string v1, "capture_start"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public onShutterDown()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[QuickCapture][CapturePerformance] onShutterDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onShutterDown()V

    .line 750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, -0x1

    .line 755
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 756
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_self_timer"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    .line 758
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    :cond_1
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doShutterClick(II)Z

    :cond_2
    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 6

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture][CapturePerformance] onShutterLongClickStart, curPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterLongClickStart space in not enough, can not record photo."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    return v3

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 687
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageVolume is removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showStorageUnAvailableHint()V

    return v3

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_2

    const-string v1, "key_touch_capture"

    .line 693
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "off"

    :goto_0
    const-string v1, "on"

    .line 695
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShutterLongClick isTouchCaptureOn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mCurrentFocusState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCurrentFocusState:Ljava/lang/String;

    const-string v1, "ACTIVE_SCAN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 702
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needQuickCapture(I)I

    move-result v0

    .line 703
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_4

    if-gtz v0, :cond_4

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterLongClick return because single capturing, needQCValue:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 708
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    if-lez v0, :cond_5

    .line 709
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterLongClick return because mCapturingNumber > 1, is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", needQCValue:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "Temperature"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 715
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-eqz v0, :cond_6

    .line 716
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return v2

    .line 720
    :cond_6
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 721
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 722
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 724
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    if-nez p1, :cond_7

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContinuousShotSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 728
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-nez p1, :cond_9

    .line 729
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    .line 732
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "continuous shot is not support"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showContinuousShotNotSupportHint()V

    return v2

    :cond_9
    const/4 p1, 0x3

    .line 737
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 738
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    .line 739
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 742
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->startContinuousShot()V

    return v2
.end method

.method public onShutterStart(Z)V
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterStart,released: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSyncThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData()V

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 841
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_2

    .line 842
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterStart(Z)Z

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isNeedDeviceCaptureSound()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 845
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    if-nez p1, :cond_3

    .line 846
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x96

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3
    const/4 p1, 0x0

    .line 848
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    .line 852
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsAdaptLowPlatform:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterStart  mCapturingNumber.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2shotMaxCacheNumber:I

    if-gt p1, v0, :cond_5

    if-lez p1, :cond_5

    .line 857
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result p1

    if-nez p1, :cond_5

    .line 858
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 859
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    if-eqz p1, :cond_5

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x97

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_5
    return-void
.end method

.method public onShutterUp(I)V
    .locals 5

    .line 767
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    if-eqz v0, :cond_c

    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    if-eq v0, p1, :cond_2

    goto/16 :goto_2

    .line 774
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] onShutterUp action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterLongClick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    .line 777
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 778
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 779
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x16

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 780
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    .line 781
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x258

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 785
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isContinuousShotSupport()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_5

    .line 787
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopContinuousShotCount()V

    .line 789
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    goto :goto_1

    .line 791
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_7

    .line 792
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 794
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCUpAction()I

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 799
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-nez p1, :cond_9

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterUp mCaptureHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 803
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 804
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 808
    :cond_a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz p1, :cond_b

    .line 809
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->sendShutterAction(II)Z

    .line 811
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->processQCUpAction()I

    :goto_1
    return-void

    .line 769
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickCapture] onShutterUp return, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterActionState:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterLongClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurShutterPriority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", curPriority:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDrawn()V
    .locals 3

    .line 1356
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mNeedCreateVideoSurface:Z

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->createTempRecordFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onThumbNailTypeConfirmed(I[I)V
    .locals 3

    .line 923
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onThumbNailTypeConfirmed(I[I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 927
    aget v2, p2, v0

    .line 928
    aget p2, p2, v1

    if-eq v2, v1, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 929
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    goto :goto_0

    .line 931
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsTimeLongAlgoSceen:Z

    const/4 p2, -0x1

    .line 933
    :goto_0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mThumbNailType:I

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 936
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureAnimationByThumbnail:Z

    .line 937
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x96

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3
    if-ne p1, v1, :cond_4

    .line 939
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isSyncThumbnail()Z

    move-result p1

    if-nez p1, :cond_4

    .line 940
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData()V

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 3

    .line 339
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 342
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureHandler:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$CaptureHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterLongClick:Z

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->stopContinuousShot()V

    return-void
.end method

.method protected final ratioEqual(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 583
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeBgCaptureThumb()V
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_0

    .line 964
    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->removeBgCaptureThumb()V

    :cond_0
    return-void
.end method

.method protected resetCaptureData()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCapturingNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1102
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShot2ShotLeftNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 331
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mResumed:Z

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsShowSelfTimerDelay:Z

    return-void
.end method

.method public setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
    .locals 1

    .line 988
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsBgCaptureSupport:Z

    if-eqz v0, :cond_0

    .line 989
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mModeBgCaptureListener:Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    :cond_0
    return-void
.end method

.method protected showLowStorageHint()V
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 1304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLowStorageMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showStorageUnAvailableHint()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 1310
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public final startContinuousShot()V
    .locals 2

    .line 1447
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1448
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1452
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->startContinuousShot()V

    return-void
.end method

.method public final startContinuousShutter()V
    .locals 2

    .line 1468
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1469
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startContinuousShutter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->startContinuousShutter()V

    return-void
.end method

.method public final stopContinuousShot()V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-nez v0, :cond_0

    .line 1458
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mContinuousShot is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopContinuousShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1463
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotControl;->stopContinuousShot()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 354
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCSNotSupportHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;->release()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;

    :cond_0
    const-wide/16 v0, 0x0

    .line 361
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mShutterClickInterval:J

    const-string v0, "key_picture_size"

    .line 362
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_algorithm_migrate"

    .line 363
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 364
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_super_definition"

    .line 365
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_self_timer_status"

    .line 366
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->releaseQCSound()V

    return-void
.end method

.method public updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 621
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->jpegCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need jpeg image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 629
    :cond_1
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 1366
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p1, p2, :cond_0

    .line 1368
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->handleStorageUnmounted()V

    :cond_0
    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 654
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsSupportPostView:Z

    .line 655
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method protected updateThumbnailView(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1281
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected updateThumbnailView([B)V
    .locals 2

    .line 1246
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x200

    const/4 v1, 0x0

    .line 1248
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1250
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 635
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getDataFlowType()I

    move-result v0

    .line 636
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 644
    :cond_1
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
