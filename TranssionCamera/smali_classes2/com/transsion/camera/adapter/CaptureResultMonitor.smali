.class public Lcom/transsion/camera/adapter/CaptureResultMonitor;
.super Ljava/lang/Object;
.source "CaptureResultMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field private final mActiveArraySize:Landroid/graphics/Rect;

.field private mAeStateFlashRequired:Z

.field private mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

.field private mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

.field private mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

.field private mCameraBVCount:I

.field private mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field private mFrameResultCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

.field private mIsAEPreCapturing:Z

.field private mIsAFActiveScanning:Z

.field private mIsAFStableScanning:Z

.field private mIsAFTriggered:Z

.field private mIsPreAFActiveScanning:Z

.field private mIsPreviewStarted:Z

.field private mIsWideCamera:Z

.field private mLastAeFrameNumber:J

.field private mLastAeResult:I

.field private mLastAfFrameNumber:J

.field private mLastAfState:I

.field private mLastLaserState:I

.field private mLastScreenFlashFire:Z

.field private mNeedTriggerPreCapture:Z

.field private final mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field private mStreamIdCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureResultMonitor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 57
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    const-wide/16 v1, -0x1

    .line 59
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 63
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 64
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 72
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    .line 76
    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "android.control.zoomRatio"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    .line 93
    new-instance v0, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    .line 101
    iput-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 102
    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsWideCamera:Z

    .line 103
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    .line 104
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    .line 105
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    return-void
.end method

.method private checkAEResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 297
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 298
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    const/4 p1, 0x3

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 312
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    .line 316
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    if-eqz p1, :cond_2

    .line 317
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] checkAEResult, aeState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 318
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    if-eqz p1, :cond_2

    .line 321
    invoke-interface {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkAFResult(IZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 479
    :cond_0
    iget-boolean p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    if-eqz p2, :cond_4

    .line 480
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 481
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 482
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz p2, :cond_4

    .line 483
    sget-object p2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance] checkAFResult, afState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 486
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz p0, :cond_4

    if-ne p1, v1, :cond_3

    move v0, v1

    .line 473
    :cond_3
    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onAutoFocusMoving(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private checkAFResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 379
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 387
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 389
    iget v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    if-eq v4, v5, :cond_0

    move v3, v2

    .line 390
    :cond_0
    iput v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 391
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v3

    move v2, p1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_2
    move p1, v3

    move v2, p1

    :goto_1
    if-eqz v2, :cond_3

    .line 397
    invoke-direct {p0, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkPreAFResult(I)V

    .line 401
    :cond_3
    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkPreAFStable(Ljava/lang/Integer;)V

    .line 404
    iget-object v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    if-eqz v4, :cond_4

    .line 405
    invoke-interface {v4}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->laserFocusSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkLaserFocusResult(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 413
    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAFResult(IZ)V

    :cond_5
    return-void
.end method

.method private checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method private checkAnimalEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z
    .locals 5

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-lez p3, :cond_0

    .line 618
    invoke-interface {v0, v2}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    return v1

    .line 621
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAnimalEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 622
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 623
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result p2

    .line 624
    iget v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {p3, v3, v4, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertEyes([IIILandroid/graphics/Rect;Z)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    return v0

    .line 629
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    invoke-interface {p0, v2}, Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;->onAnimalEyeDetectionCallback([I)V

    :cond_2
    return v1
.end method

.method private checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 707
    array-length v1, p1

    if-lez v1, :cond_0

    .line 708
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFlashState(I)V

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 712
    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 713
    iput v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCount:I

    goto :goto_0

    .line 715
    :cond_1
    aget p0, p1, v0

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;->onBrightnessChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 691
    array-length v0, p1

    if-lez v0, :cond_1

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 694
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 696
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 698
    aget v1, p1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;->onDualLensWarningCallback(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)Z
    .locals 8

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 516
    iget-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v3

    const/4 v4, 0x1

    .line 517
    invoke-direct {p0, p1, p2, v4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 519
    array-length v6, v3

    const/4 v7, 0x5

    if-le v6, v7, :cond_0

    .line 520
    array-length p1, v3

    div-int/2addr p1, v7

    .line 521
    invoke-static {v2, p1, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;

    move-result-object v2

    move-object p1, v5

    goto :goto_0

    .line 525
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 527
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result v3

    .line 528
    iget v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v7, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v2, v6, v7, p1, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p1

    .line 529
    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v6, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, v2, v6, v5, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertEyes([IIILandroid/graphics/Rect;Z)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 530
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isNeedShowFace([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 531
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;->onEyeDetectionCallback([I)V

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz p0, :cond_1

    .line 533
    invoke-interface {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V

    :cond_1
    return v4

    .line 538
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;->onEyeDetectionCallback([I)V

    :cond_3
    return v1
.end method

.method private checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z
    .locals 6

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-lez p3, :cond_0

    return v1

    .line 549
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 550
    array-length v2, p3

    if-lez v2, :cond_1

    aget p3, p3, v1

    if-lez p3, :cond_1

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V

    return v1

    .line 554
    :cond_1
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/Face;

    .line 555
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 557
    array-length v4, v2

    const/4 v5, 0x5

    if-le v4, v5, :cond_2

    .line 558
    array-length v4, v2

    div-int/2addr v4, v5

    .line 559
    invoke-static {p3, v4, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;

    move-result-object p3

    .line 560
    invoke-direct {p0, p1, p2, v3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p2

    goto :goto_0

    .line 562
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V

    return v1

    .line 566
    :cond_3
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p2

    .line 568
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result v2

    .line 569
    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v5, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {p3, v4, v5, p2, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p3

    .line 571
    invoke-direct {p0, p3, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAIGroupPhoto([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_7

    .line 573
    array-length p2, p3

    if-lez p2, :cond_7

    .line 574
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 575
    array-length p2, p1

    if-lez p2, :cond_5

    .line 576
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_5

    .line 577
    array-length p2, p3

    if-ge v1, p2, :cond_4

    .line 578
    aget-object p2, p3, v1

    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->updateAttarFaceAttarInfo(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    if-eqz p1, :cond_6

    .line 583
    invoke-interface {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;->onGenderAttributeCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    .line 585
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {p0, p3, v3}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V

    return v3

    .line 588
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;->onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V

    :cond_8
    return v1
.end method

.method private checkFlashState(I)V
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x15

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 345
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashRequired(Z)V

    return-void
.end method

.method private checkHumanResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-lez p3, :cond_0

    .line 596
    invoke-interface {v0, v2, v2}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    return v1

    .line 599
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p3

    if-eqz p3, :cond_1

    .line 600
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-lez v0, :cond_1

    .line 601
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 602
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 603
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isStreamFlip()Z

    move-result p2

    .line 604
    iget v3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorOrientation:I

    iget v4, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mSensorFacing:I

    invoke-static {v0, v3, v4, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, p1, p3}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    const/4 p0, 0x1

    return p0

    .line 610
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;->onHumanDetectionCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;[I)V

    :cond_2
    return v1
.end method

.method private checkLaserFocusResult(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 450
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 453
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 455
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return v0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 458
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    if-ne p2, v0, :cond_1

    .line 460
    iget-object p2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;->onLaserFocused(Z)V

    .line 461
    iput p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastLaserState:I

    return v0

    :cond_1
    return p1
.end method

.method private checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    iget v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    .line 362
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    iget v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return-void
.end method

.method private checkPreAFResult(I)V
    .locals 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 422
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 423
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz v2, :cond_2

    .line 424
    sget-object v2, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance] checkPreAFResult, afState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkPreAFStable(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 438
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 439
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    if-eqz p1, :cond_0

    .line 441
    sget-object p1, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] checkPreAFStable, afState is stable"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    const/4 p1, 0x0

    .line 443
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    :cond_0
    return-void
.end method

.method private checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;->onFlashFire()V

    .line 357
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastScreenFlashFire:Z

    return-void
.end method

.method private checkSmartFocusResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V
    .locals 2

    .line 497
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 500
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkFaceResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 503
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkHumanResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    .line 506
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAnimalEyesResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)Z

    return-void
.end method

.method private checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 723
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 724
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;->onStreamIdCallback([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkVideoHDRInfoResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 800
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    .line 802
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 803
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    :cond_0
    return-void
.end method

.method private static convertEyes([IIILandroid/graphics/Rect;Z)[I
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 751
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 754
    aget v2, p0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget v3, p0, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    aget v4, p0, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    aget v5, p0, v4

    if-nez v5, :cond_1

    goto :goto_2

    .line 757
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    aget v5, p0, v1

    aget v6, p0, v2

    aget v7, p0, v3

    aget v8, p0, v4

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v2

    .line 760
    :goto_1
    invoke-static {v0, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 762
    iget p2, p1, Landroid/graphics/Rect;->left:I

    aput p2, p0, v1

    .line 763
    iget p2, p1, Landroid/graphics/Rect;->top:I

    aput p2, p0, v2

    .line 764
    iget p2, p1, Landroid/graphics/Rect;->right:I

    aput p2, p0, v3

    .line 765
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, p0, v4

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static convertFaces([Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;Z)[Lcom/transsion/camera/utils/SettingInfo$CameraFace;
    .locals 10

    if-eqz p0, :cond_5

    .line 731
    array-length v0, p0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    .line 734
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 736
    :goto_1
    array-length p4, p0

    if-ge v1, p4, :cond_4

    .line 737
    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-static {p4, p2, p1, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 740
    aget-object p4, p0, v1

    invoke-virtual {p4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 741
    new-instance p4, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    aget-object v2, p0, v1

    .line 742
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v7

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v8

    aget-object v2, p0, v1

    .line 743
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v9

    move-object v2, p4

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 741
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 746
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 747
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-lez p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, p1

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 683
    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 684
    iget p0, p2, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 685
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v2

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    return-object p2
.end method

.method private getPreviewRectangle(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Z)Landroid/graphics/Rect;
    .locals 1

    .line 770
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz p3, :cond_0

    .line 772
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    if-eqz p3, :cond_0

    .line 773
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mZoomRatioResultKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 774
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->convertZoomRatio(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 777
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-lez p0, :cond_1

    .line 778
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 779
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 781
    :cond_1
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkFaceResult previewSize is null. "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isRectContain(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    .line 256
    iput v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    const-wide/16 v1, -0x1

    .line 258
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfFrameNumber:J

    .line 259
    iput-wide v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeFrameNumber:J

    .line 260
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 261
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 262
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return-void
.end method

.method private static resetFaceRect([Landroid/hardware/camera2/params/Face;I[I)[Landroid/hardware/camera2/params/Face;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v1, v0

    .line 656
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 657
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 658
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 659
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 660
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    mul-int/lit8 v2, v1, 0x5

    .line 665
    aget v3, p2, v2

    move v4, v0

    :goto_2
    if-ge v4, p1, :cond_2

    if-eqz p0, :cond_1

    .line 667
    array-length v5, p0

    if-ge v4, v5, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 668
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 669
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 670
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x3

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 671
    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    add-int/lit8 v6, v2, 0x4

    aget v6, p2, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method


# virtual methods
.method protected aeStateFlashRequired()Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAeStateFlashRequired:Z

    return p0
.end method

.method cancelAF()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method checkCaptureResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Ljava/lang/String;)V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAEResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkAFResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkSmartFocusResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 284
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkNeedTriggerPreCaptureResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    .line 285
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 286
    iget-object p3, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;->onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkVideoHDRInfoResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method clearFrameResultCallback()V
    .locals 2

    .line 231
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearFrameResultCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method clearStreamIdCallback()V
    .locals 2

    .line 172
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearStreamIdCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getLastAeResult()I
    .locals 0

    .line 267
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAeResult:I

    return p0
.end method

.method public getLastAfState()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mLastAfState:I

    return p0
.end method

.method protected isAFTriggered()Z
    .locals 0

    .line 367
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return p0
.end method

.method public isPreviewStarted()Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    return p0
.end method

.method protected needTriggerPreCapture()Z
    .locals 0

    .line 371
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mNeedTriggerPreCapture:Z

    return p0
.end method

.method onPreviewStarted()V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    :cond_0
    return-void
.end method

.method onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreviewStarted:Z

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->reset()V

    return-void
.end method

.method public registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 190
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerDualLensCallback error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 216
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 155
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    return-void
.end method

.method setAutoFocusMoveResultCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusMoveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;

    return-void
.end method

.method public setBrightnessCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraBVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    return-void
.end method

.method setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    return-void
.end method

.method setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    return-void
.end method

.method setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mGenderAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.method setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    return-void
.end method

.method startAF()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    return-void
.end method

.method triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAEPreCapturing:Z

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAEPreCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-void
.end method

.method triggerAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFTriggered:Z

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFActiveScanning:Z

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mAutoFocusResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method triggerAFStableScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsAFStableScanning:Z

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method triggerPreAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mIsPreAFActiveScanning:Z

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mPreAFResultCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method public unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 206
    sget-object p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "unRegisterOnShutterListener error [why null]"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mCameraDualLensCallbacks:Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 225
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterFrameResultCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mFrameResultCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 164
    sget-object v0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unRegisterStreamIdCallback error [why null]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/adapter/CaptureResultMonitor;->mStreamIdCallback:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
