.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "CommonDualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CameraMode<",
        "Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;",
        "Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;",
        "Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;"
    }
.end annotation


# static fields
.field protected static final INVALID_VIDEO_QUALITY:Ljava/lang/String; = "-1"

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MIN_DURATION:J = 0x1f4L

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field protected static final QUALITY_SPLITTER:Ljava/lang/String; = "_"

.field private static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mDuration:J

.field protected mIsSaving:Z

.field protected mPaused:Z

.field protected mPreviewSize:Landroid/util/Size;

.field protected final mQualityLock:Ljava/lang/Object;

.field protected mRestartPreview:Z

.field private mShutterLongClick:Z

.field protected volatile mState:I

.field private mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mTempLocation:Landroid/location/Location;

.field protected mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

.field protected mVideoFrameHeight:I

.field protected mVideoFrameWidth:I

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field protected mVideoQuality:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    const-string v0, "-1"

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    const/16 v0, 0x780

    .line 79
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    const/16 v0, 0x438

    .line 80
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    const/4 p1, 0x1

    .line 92
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    .line 94
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private checkStorageSpace()Z
    .locals 6

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 466
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    return v1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 470
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    :goto_0
    return-object p0
.end method

.method private handRecorderStopped(IZ)V
    .locals 2

    .line 557
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->stopRecording(Z)Z

    .line 558
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 559
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handRecorderStopped] stop with invalid file, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    .line 561
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->isVideoFileValid()Z

    move-result p2

    if-nez p2, :cond_2

    .line 569
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[handRecorderStopped] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    .line 575
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->storingVideoFile(I)V

    return-void
.end method

.method protected static qualityValid(I)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showLowStorageHint()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showStorageUnAvailableHint()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private stopWithInValidFile(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    instance-of v0, p2, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 372
    check-cast p2, Ljava/io/FileDescriptor;

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 374
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 375
    check-cast p2, Ljava/lang/String;

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateThumbnail] file is invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V
    .locals 6

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    :cond_1
    const/4 v2, 0x0

    .line 630
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    .line 631
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v2, p1, p3, p4, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/mode/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    .line 635
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3, p4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 639
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 641
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getTargetUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 643
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;

    .line 644
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Ljava/lang/Object;I)V

    .line 643
    invoke-interface {v0, v1, p3, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    goto :goto_1

    .line 646
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "_data"

    .line 647
    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 648
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;

    invoke-direct {p4, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_1
    return-void

    .line 623
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected checkMinDuration()Z
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoFileInfo is null,we have not information to save"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 605
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMinDuration tempPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 608
    :try_start_0
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 612
    :goto_0
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->isDurationInValid(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storingVideoFile duration too short, duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkPermitBeforeStart()Z
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method protected configProfile(Landroid/media/CamcorderProfile;)V
    .locals 0

    return-void
.end method

.method public creatFileSpec()Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 4

    .line 411
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    const-string v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
    .locals 1

    .line 745
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo;
    .locals 1

    .line 392
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    if-eqz p2, :cond_1

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez p1, :cond_0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 401
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 402
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z

    .line 403
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    .line 405
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    return-object p1
.end method

.method protected deleteTempFile()V
    .locals 3

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTempVideoFile Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 733
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_duration"

    return-object p0
.end method

.method public abstract synthetic getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 145
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getOutputDataType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize mVideoFrameWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    new-instance v5, Landroid/util/Size;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    invoke-direct {v5, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 327
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double v3, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    .line 328
    invoke-static/range {v2 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getVideoOrientation()I
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getVideoOrientation] mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_mirror"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 444
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 445
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 446
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 447
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVideoHintOrientation] mirror: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " --> "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected getVideoSavingMessage()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 106
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 108
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 109
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p1, "key_video_quality"

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    return-void
.end method

.method protected isDurationInValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    if-lez p0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected needAudio()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mute_recoder"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "muteRecoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "off"

    .line 433
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method protected notifyRawActionToUI(I)V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_0

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyRawActionToUI] mAppUI is null when notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Maybe something wrong will happen"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 699
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyToAppUI(IILjava/lang/String;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_0

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[notifyToAppUI] mAppUI is null when notify "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Maybe something wrong will happen"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 709
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToIdle()V
    .locals 3

    const/16 v0, 0x3b

    .line 686
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 688
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 713
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyToVideoUI action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_2

    .line 721
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_2

    .line 716
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    return-void
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onMediaRecorderPaused()V
    .locals 1

    .line 512
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .locals 1

    const/16 v0, 0x10

    .line 532
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .locals 0

    .line 497
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p1

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .locals 1

    const/16 v0, 0xf

    .line 492
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderResumed()V
    .locals 1

    .line 517
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .locals 1

    .line 506
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 507
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 1

    const/16 v0, 0x33

    .line 525
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 526
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->handRecorderStopped(IZ)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .locals 0

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChangeDone mRestartPreview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string p1, "-1"

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->prepareVideoData()I

    const/4 p1, 0x0

    .line 260
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    :cond_0
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_video_quality"

    .line 244
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    :cond_0
    return-void
.end method

.method public onSettingReady()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingReady, mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->prepareVideoData()I

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 5

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterClick mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 160
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterClick space in not enough, can not record photo."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showLowStorageHint()V

    return v0

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StorageVolume is removed."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showStorageUnAvailableHint()V

    return v0

    :cond_3
    const/16 p1, 0xf

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public onShutterLongClick(I)Z
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterLongClick mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    return v0

    .line 191
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x15

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v0
.end method

.method public onShutterUp(I)V
    .locals 2

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterUp, mShutterLongClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_1
    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 365
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 366
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 367
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 355
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 356
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 135
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    const-string v1, "-1"

    .line 136
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void

    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected prepareVideoData()I
    .locals 5

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    .line 272
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "_"

    .line 278
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 279
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 282
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    .line 283
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    const-string v3, "6_60"

    .line 285
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "8_60"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    :cond_2
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_3

    .line 287
    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x2

    .line 288
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareVideoData configRecorder quality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->configProfile(Landroid/media/CamcorderProfile;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    .line 272
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    return-void
.end method

.method protected abstract sendNotification(Landroid/content/Context;)V
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 422
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    :cond_0
    return-void
.end method

.method protected abstract showInfo(I)V
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .locals 2

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 480
    sget-object p1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return v0
.end method

.method public stopRecording(Z)Z
    .locals 0

    const/4 p1, 0x6

    .line 486
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onCameraStateChanged(I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected storingVideoFile(I)V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    .line 581
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    :cond_1
    const/4 v0, 0x3

    const/16 v1, 0x64

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 594
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void

    .line 583
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    const-string v0, "key_video_quality"

    .line 117
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method protected updateQuality(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuality new quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "-1"

    :goto_0
    return-object p0
.end method
