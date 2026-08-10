.class public Lcom/transsion/camera/feature/mode/video/SlowMotionMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SlowMotionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DECODE_TEMP_FILE_PREFIX:Ljava/lang/String; = ".decode_"

.field private static final DEFAULT_VIDEO_FPS:I = 0x1e

.field private static final ENCODE_TEMP_FILE_PREFIX:Ljava/lang/String; = ".encode_"

.field private static final FRAME_RATE_25:I = 0x19

.field private static final FRAME_RATE_30:I = 0x1e

.field private static final KEEP_END_FRAME_240_FPS:I = 0x88

.field private static final KEEP_END_FRAME_960_FPS:I = 0x56

.field private static final KEEP_START_FRAME_240_FPS:I = 0x4c

.field private static final KEEP_START_FRAME_960_FPS:I = 0x1a

.field private static final LIMIT_RECORDER_DURATION_240:J = 0x1068L

.field private static final LIMIT_RECORDER_DURATION_960:J = 0x898L

.field private static final MSG_STOP_RECORDING:I = 0x0

.field private static final SKIP_FRAMES_ONE_TIME_240:I = 0x4

.field private static final SKIP_FRAMES_ONE_TIME_960:I = 0x8

.field private static final SUFFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final VIDEO_FPS_120:I = 0x78

.field private static final VIDEO_FPS_240:I = 0xf0

.field private static final VIDEO_FPS_960:I = 0x3c0


# instance fields
.field private mCameraAssigned:Z

.field private mFPS:I

.field private mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecordTimeLimited:Z

.field private mLimitedRecording:Z

.field private mLimitedRecordingFinished:Z

.field private mMaxHighSpeedFps:I

.field private mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mRecordReason:I

.field private mRecorderOrientation:I

.field private mShowHint:Z

.field private mSlowMotionQualityHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

.field private mSupportedFPSValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockAeAf:Z


# direct methods
.method public static synthetic $r8$lambda$29JsACF--4QCb3XbyTRosTuYVE8(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6xi-a9m_qnWLzayp3MmgaoLG18(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 90
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 91
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    const/16 v0, 0x67

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    const/4 v1, -0x1

    .line 94
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    .line 98
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 102
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    .line 106
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    .line 479
    new-instance p2, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance p2, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/feature/mode/video/SlowMotionMode$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private configMediaChainAttribute()V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v2, 0x19

    const/4 v3, 0x4

    const/16 v4, 0xf0

    if-ne v4, v1, :cond_1

    .line 612
    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x4c

    const/16 v2, 0x88

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    .line 619
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x55

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameInfo(II)V

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setCaptureRate(I)V

    return-void
.end method

.method private createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .locals 2

    .line 485
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 487
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 489
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method private getBitRateCoefficient()I
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf0

    .line 508
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, 0x3c0

    if-ne v0, p0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMaxOutputFps()I
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getMaxOutputFps, mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 745
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 746
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 751
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 752
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 753
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 754
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 756
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 747
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getMaxOutputFps, ranges is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private getRecordTimeLimited()Z
    .locals 4

    .line 577
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecordTimeLimited mFPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSlowVideoFrameRate()I
    .locals 3

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v1, 0xf0

    if-ne v1, v0, :cond_0

    const/16 p0, 0x78

    return p0

    :cond_0
    const/16 v2, 0x3c0

    if-ne v2, v0, :cond_1

    return v1

    .line 503
    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    return p0
.end method

.method private getVideoQualityByVideoSize(Ljava/lang/String;)I
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getVideoSizeByFPS(I)Ljava/lang/String;
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, control is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 722
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighSpeedSizesAndFPS()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, getSupportedHighSpeedSizesAndFPS is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "1280x720"

    return-object p0

    .line 727
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 728
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/utils/HighFpsResolution;

    .line 730
    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getFps()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSizeByFPS, find fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoSize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 736
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSizeByFPS, not find videoSize by fps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private initFPS()V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_fps"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFPS fpsValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", highSpeedSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 181
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 183
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getMaxOutputFps()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    if-eqz v0, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    :cond_2
    return-void

    .line 188
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 473
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private initVideoQualityHashMap()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1920x1080"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1280x720"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "640x480"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isRecordTimeLimited()Z
    .locals 0

    .line 573
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[mPauseResumeListener] click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method private synthetic lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 688
    :cond_0
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 689
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p2

    .line 690
    invoke-interface {p1, p4, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 692
    :try_start_0
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    iget-wide p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void
.end method

.method private processFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 7

    .line 674
    invoke-interface {p7, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p4, p2, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setOrientation(I)V

    .line 681
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    new-instance p4, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda0;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p7

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V

    .line 698
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->process()V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showFPSHintInfo()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f100135

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f100136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v3, 0x7f100137

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 299
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private storingInterpolateVideoFile(I)V
    .locals 10

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "storingInterpolateVideoFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 632
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v9, :cond_0

    .line 634
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storageOperator is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 639
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".decode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 646
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 647
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-interface {v9, v8, v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 650
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename TempVideoFile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 652
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 656
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".encode_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->clone()Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->processFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method


# virtual methods
.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_slowmotion_duration"

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_fps"

    const-string p1, "key_fingerprint_capture"

    .line 280
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 263
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_volume_key"

    const-string v1, "Shutter"

    .line 264
    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .line 767
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slow_motion_camera_assgined"

    invoke-static {p2, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    if-eqz v0, :cond_0

    .line 768
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 771
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDataType()I
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 430
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 431
    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 2

    .line 250
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v1, 0x3c0

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xb

    return p0

    :cond_0
    const/16 v0, 0xf0

    .line 253
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 155
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoQualityHashMap()V

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    const-string p2, "key_video_fps"

    .line 158
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "slow_motion_camera_assgined"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->support()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    :cond_0
    return-void
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 4

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return p0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 365
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-nez v0, :cond_0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mSlowMotionUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 374
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 245
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 339
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    :cond_0
    return-void
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .locals 15

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoQualityByVideoSize(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    move v2, v0

    .line 403
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v4, "_"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 404
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 405
    iget v6, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 406
    iget v7, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 407
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateQuality,nextQuality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",currentQuality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateQuality, currentFps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxHighSpeedFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFPS=, realCurrentFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", realFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v2, v3, :cond_2

    if-eq v6, v7, :cond_3

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v9, p0

    .line 411
    invoke-virtual/range {v9 .. v14}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    :cond_3
    if-eq v0, v1, :cond_4

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 148
    new-instance p0, Lcom/transsion/camera/feature/mode/video/SlowMotionVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionVideoHelper;-><init>()V

    return-object p0
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .locals 6

    .line 449
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempMediaRecorderFile()V

    .line 450
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p4

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p4, :cond_1

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onMediaRecorderPrepared cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 462
    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkDisplayChanged(ILjava/lang/Object;II)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startPreview()V

    :goto_0
    return-void
.end method

.method public onMediaRecorderStarted()V
    .locals 4

    .line 553
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    .line 555
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    .line 557
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3c0

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v2, p0, :cond_0

    const-wide/16 v2, 0x898

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1068

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 0

    .line 568
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    const/4 p1, 0x0

    .line 569
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 528
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSettingChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_video_fps"

    .line 317
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 318
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlowMotionFps(I)V

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 324
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initFPS()V

    .line 350
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore shutter click when time limited recording"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 2

    .line 215
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 441
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 443
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getBitRateCoefficient()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setBitRateCoefficient(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 444
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 536
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected stopSlowMotionRecording()V
    .locals 1

    .line 547
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopSlowMotionRecording()V

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .locals 3

    .line 588
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 589
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 590
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3a

    .line 594
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 596
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 598
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void

    .line 603
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->storingInterpolateVideoFile(I)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    :cond_0
    const-string v0, "key_video_fps"

    .line 205
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->unInit()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
