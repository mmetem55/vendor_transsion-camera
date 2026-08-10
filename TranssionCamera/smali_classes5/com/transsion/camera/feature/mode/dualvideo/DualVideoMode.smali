.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.super Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;
.source "DualVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;
    }
.end annotation


# instance fields
.field private mArrayDualDevice:[Ljava/lang/String;

.field private mCurrentPosition:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDualDeviceGroupType:Ljava/lang/String;

.field private mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDualDeviceSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

.field private mFoldFrontID:Ljava/lang/String;

.field private mIfNeedShowDualDeviceButton:Z

.field private mMainSplitValue:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

.field private mRecordingFlag:Z

.field private mSlaveDeviceIsFront:Z

.field private mSplitStyleValue:Ljava/lang/String;

.field private mSwitchScreenListener:Landroid/view/View$OnClickListener;

.field private mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mSwitchScreenSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSnapShotListener:Landroid/view/View$OnClickListener;

.field private mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

.field private onShutterClickedTime:J


# direct methods
.method public static synthetic $r8$lambda$_gSDrN0ldVzQisMy0pdlzoI2CwM(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->lambda$updatePreviewSize$0(Landroid/util/Size;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    const/4 p2, 0x2

    .line 73
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 537
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 549
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    .line 559
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->switchToNextScreenValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;[BLandroid/graphics/Bitmap;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)[Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getWideCameraID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getLongCameraID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

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

    .line 634
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    const-wide/16 v1, 0x0

    .line 635
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setRecordingTotalSize(J)V

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 637
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isVssSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedVss(Z)V

    .line 638
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoSnapShotListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setVideoSnapShotListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setExtClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doActionWithStorageUnmounted()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage UNMOUNTED doActionWithStorageUnmounted, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->leave()V

    .line 479
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 480
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    .line 482
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private getIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 570
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, p0, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private getLongCameraID()Ljava/lang/String;
    .locals 0

    .line 797
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 799
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getNextIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 582
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return p0
.end method

.method private getPreviewMarginInfo(III)Landroid/graphics/Rect;
    .locals 7

    .line 909
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    int-to-double v1, p2

    const-wide v3, 0x3ffc71c720000000L    # 1.7777777910232544

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ge p2, p3, :cond_0

    if-le v1, p3, :cond_1

    :cond_0
    int-to-double v5, p3

    div-double/2addr v5, v3

    double-to-int v1, v5

    move v3, v1

    move v1, p3

    goto :goto_0

    :cond_1
    move v3, p2

    :goto_0
    const/4 v4, 0x0

    if-ne p1, v2, :cond_2

    sub-int p0, p2, v3

    .line 933
    div-int/lit8 p0, p0, 0x2

    move p1, p0

    move v1, v4

    move p0, v1

    move v4, p1

    goto :goto_1

    .line 936
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p0

    sub-int p1, p3, v1

    sub-int/2addr p1, p0

    move v1, p1

    move p1, v4

    :goto_1
    sub-int/2addr p2, p1

    sub-int/2addr p3, v1

    .line 940
    invoke-virtual {v0, v4, p0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getWideCameraID()Ljava/lang/String;
    .locals 0

    .line 805
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideDualDeviceItem()V
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->hideDualDeviceItem()V

    :cond_0
    return-void
.end method

.method private initDualDeviceSetting()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of v1, v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v1, "key_dual_device"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private initSwitchScreenSetting()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of v1, v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_0

    .line 606
    check-cast v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v1, "key_dual_cam_switch_screen"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 7

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 628
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v1, v0

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    .line 629
    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->setScreenFormType(II)V

    return-void
.end method

.method private isFrontID(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "_"

    .line 486
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 487
    array-length p1, p0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 490
    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updatePreviewSize$0(Landroid/util/Size;)V
    .locals 1

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateSurfaceSize(II)V

    return-void
.end method

.method private saveJpegToFile([BLandroid/graphics/Bitmap;)V
    .locals 7

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 743
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 744
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 745
    new-instance v2, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 746
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_flash_facade"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "torch"

    .line 749
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 752
    :cond_2
    invoke-virtual {v2, v5}, Lcom/transsion/camera/adapter/CameraResults;->setFlash(S)V

    .line 753
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->convertJpegOrientation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    const/4 v3, 0x0

    .line 754
    invoke-static {p1, v3, v2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 755
    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private setDualDeviceGroupInfo()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "type_main_only"

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 836
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 839
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "2_1"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type_wide_main"

    .line 840
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    goto :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "3_1"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    .line 843
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "type_tele_main"

    .line 845
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "type_all"

    .line 848
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setSCurrentPosition()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_device"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 592
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mCurrentPosition:I

    return-void
.end method

.method private showOrHideDualDeviceButton(Z)V
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_0

    .line 829
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    :cond_0
    return-void
.end method

.method private switchToNextScreenValue()Ljava/lang/String;
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_cam_switch_screen"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getNextIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 620
    rem-int/2addr v1, v0

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSupportList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSwitchScreenSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateMainParametersDevice(Ljava/lang/String;)V
    .locals 4

    const-string v0, "_"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMainParametersDevice DualDevice id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 498
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-le v3, v2, :cond_1

    aget-object v1, v1, v2

    const-string v3, "1"

    .line 499
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    .line 500
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v3, v1

    if-le v3, v2, :cond_2

    aget-object v1, v1, v2

    .line 505
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getLongCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v2, "device_slave"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v2, "device_main"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    .line 510
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoCameraIds(Ljava/lang/String;)V

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 513
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    :cond_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoCameraNames(Ljava/lang/String;)V

    return-void
.end method

.method private updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 519
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    .line 520
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const-string v1, "up_down"

    .line 521
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "up_small"

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 522
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    .line 523
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 524
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    const-string v3, "pip"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 527
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_PIP:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const/4 p1, 0x3

    .line 528
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    .line 529
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 530
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    :cond_1
    :goto_0
    move-object v3, v0

    .line 533
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSlaveDeviceIsFront:Z

    xor-int/lit8 v5, p0, 0x1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSplitStyleAndValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;IZZZ)V

    return-void
.end method


# virtual methods
.method protected configProfile(Landroid/media/CamcorderProfile;)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :cond_0
    return-void
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    const-string p0, "key_dual_video"

    const-string p1, "key_dual_device"

    const-string v0, "key_fingerprint_capture"

    .line 301
    filled-new-array {p0, p1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->getRelation(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    const-string p1, "key_dual_device"

    .line 346
    invoke-interface {p4, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    iput p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 348
    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->isFrontID(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 350
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-nez p6, :cond_1

    .line 355
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "0_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "0_1"

    .line 357
    :goto_0
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2

    .line 360
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    :cond_2
    move-object p1, p2

    .line 364
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCameraIdForOpen cameraId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 18

    move-object/from16 v6, p0

    .line 100
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 101
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 102
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 103
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 104
    invoke-interface/range {p2 .. p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 105
    new-instance v7, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-interface/range {p3 .. p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v5

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    iput-object v7, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;-><init>()V

    iput-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 107
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->init()V

    .line 108
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->setDualVideoCB(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;)V

    .line 109
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initDualDeviceSetting()V

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->initSwitchScreenSetting()V

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->setSCurrentPosition()V

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->setDualDeviceGroupInfo()V

    .line 114
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceGroupType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualDeviceGroupInfo;->getVideoFilterItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object v7, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-object v8, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v9, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v10, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-interface/range {p3 .. p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v11

    iget-object v1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v12

    iget v14, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mCurrentPosition:I

    iget-object v15, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v13, v0

    move-object/from16 v16, v1

    move/from16 v17, p7

    invoke-virtual/range {v7 .. v17}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;ILcom/transsion/camera/app/common/preview/IPreviewOperator;Landroid/view/ViewGroup;Ljava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V

    .line 117
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;

    invoke-direct {v3, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSurfaceTextureListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;)V

    .line 118
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;

    invoke-direct {v3, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;)V

    .line 119
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;

    invoke-direct {v3, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoPictureCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;)V

    .line 120
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;

    invoke-direct {v3, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoMsgCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setVideoMsgCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;)V

    .line 121
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;

    invoke-direct {v3, v6, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyTouchInfoCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;)V

    .line 122
    iget-object v1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 123
    iget-object v1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 125
    iget-object v1, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_dual_device"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0_1"

    if-nez v1, :cond_0

    move-object v1, v3

    .line 130
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    .line 132
    invoke-direct {v6, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->isFrontID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 134
    iget v4, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-nez v4, :cond_1

    .line 135
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_1
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    move-object v1, v3

    .line 144
    :cond_2
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mFoldFrontID:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 145
    iget-object v3, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 147
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_4

    .line 148
    iput-boolean v4, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    .line 149
    iget-object v0, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    .line 152
    :cond_4
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 153
    iget-object v3, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getDualSwitchButtonVisible()Z

    move-result v3

    const-string v5, "key_camera_dual_switch_button_visible"

    if-eqz v3, :cond_5

    .line 155
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "camera_dual_switch_button_show"

    invoke-virtual {v0, v5, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "camera_dual_switch_button_hide"

    invoke-virtual {v0, v5, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :goto_0
    invoke-direct {v6, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateMainParametersDevice(Ljava/lang/String;)V

    .line 162
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_dual_cam_split_style"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "up_down"

    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v5, 0x74

    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 166
    :cond_6
    iget-object v3, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_dual_cam_switch_screen"

    .line 167
    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    .line 166
    invoke-direct {v6, v0, v3, v4, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 168
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init DualDevice id:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", support dual device list:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v7, [Ljava/util/List;

    iget-object v8, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualDeviceSupportList:Ljava/util/List;

    aput-object v8, v7, v4

    .line 169
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SplitStyle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mSplitStyleValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", main split value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mMainSplitValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_flash"

    .line 174
    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_restore_settings"

    .line 175
    invoke-virtual {v6, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 176
    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 177
    iget-object v0, v6, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, v6, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected isVideoFileValid()Z
    .locals 4

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getRecordingTotalDuration()J

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

.method public notifyCameraOperateAction(I)V
    .locals 3

    if-eqz p1, :cond_6

    const-string v0, "off"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    if-eqz p1, :cond_1

    .line 875
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->showOrHideDualDeviceButton(Z)V

    .line 877
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_7

    .line 878
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    goto :goto_0

    .line 871
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem()V

    goto :goto_0

    .line 899
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 900
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 899
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 890
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_5

    .line 891
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 892
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 894
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 895
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoModeRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 894
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 883
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    .line 884
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 885
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceItemEnable(Z)V

    .line 886
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceGroupRootVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 403
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-nez v0, :cond_0

    .line 406
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

    .line 409
    :cond_0
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->createVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 412
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getItemVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem()V

    return v1

    .line 325
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 326
    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onShutterClickedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_1

    return v1

    .line 331
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 333
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_2

    .line 335
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setRecordingFlag(Z)V

    :cond_2
    return v1

    .line 340
    :cond_3
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onMediaRecorderPreparing()V
    .locals 1

    .line 460
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onMediaRecorderPreparing()V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 1

    const/16 v0, 0x10

    .line 466
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 467
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onOrientationChanged(I)V

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_1

    .line 275
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 3

    .line 281
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 288
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 291
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 290
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 292
    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->getPreviewMarginInfo(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v1, p1, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->onScreenFormChanged(IZLandroid/graphics/Rect;)V

    .line 296
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 241
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_dual_cam_split_style"

    .line 242
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x72

    const-string v3, "key_dual_cam_switch_screen"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v5, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v4, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    const-string v1, "key_dual_device"

    .line 250
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateMainParametersDevice(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 254
    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->updateSplitStyle(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    const-string p2, "key_flash"

    .line 256
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mArrayDualDevice:[Ljava/lang/String;

    if-eqz p1, :cond_4

    array-length p2, p1

    if-le p2, v5, :cond_4

    aget-object p1, p1, v5

    const-string p2, "1"

    .line 258
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "device_both"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchDeviceParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "key_restore_settings"

    .line 261
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p0, :cond_4

    .line 263
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->resetAuxData()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mIsSaving : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->onShutterClickedTime:J

    .line 383
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onShutterClick(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 385
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 386
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    const/16 p1, 0xf

    .line 387
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 388
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->showOrHideDualDeviceButton(Z)V

    goto :goto_0

    .line 390
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 391
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    .line 393
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_2

    .line 394
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setRecordingFlag(Z)V

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->hideDualDeviceItem()V

    :cond_2
    return v1
.end method

.method public pause()V
    .locals 3

    .line 194
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->pause()V

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 197
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    .line 199
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mRecordingFlag:Z

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->pause()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->hideInfo()V

    .line 206
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz p0, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->leave()V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->resume()V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stay()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 187
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDualDeviceButtonEnable(Z)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mIfNeedShowDualDeviceButton:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->showOrHideDualDeviceButton(Z)V

    :cond_1
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected showInfo(I)V
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showInfo(I)V

    return-void
.end method

.method public startAnimation(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 814
    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 815
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 816
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 817
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 818
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data
.end method

.method public unInit()V
    .locals 4

    .line 213
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->unInit()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->unInit()V

    .line 216
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mDualVideoRecorder:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->unInit()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->unInitVideoUI()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mPreviewProcessor:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    const-string v0, "key_dual_cam_switch_screen"

    .line 228
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_dual_cam_split_style"

    .line 229
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_dual_device"

    .line 230
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_flash"

    .line 231
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_restore_settings"

    .line 232
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x75

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x70

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->mVideoUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    if-eqz v0, :cond_1

    .line 423
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateScreenWidth(I)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateScreenWidth(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreviewSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 370
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->doActionWithStorageUnmounted()V

    :cond_0
    return-void
.end method
