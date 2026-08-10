.class public abstract Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "CommonVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;
.implements Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;,
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;,
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;
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
        "Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;"
    }
.end annotation


# static fields
.field protected static final INVALID_VIDEO_QUALITY:Ljava/lang/String; = "-1"

.field private static final MIN_DURATION:J = 0x1f4L

.field protected static final MSG_ON_SNAP_SHOT_START:I = 0x1

.field protected static final MSG_RETRIGGLE_SHUTTER_CLICK:I = 0x2

.field protected static final QUALITY_SPLITTER:Ljava/lang/String; = "_"

.field protected static final REDUCE_HEIGHT:I = 0x2d0

.field protected static final REDUCE_THRESHOLD:I = 0x438

.field protected static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mCaptureOrientation:I

.field private mCurrentFile:Ljava/lang/String;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultAntiValueOn:Z

.field protected mDuration:J

.field private mFirstRelationHeaderKey:Ljava/lang/String;

.field private mFirstRelationHeaderValue:Ljava/lang/String;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field protected mHandle:Landroid/os/Handler;

.field protected volatile mInTakingPicture:Z

.field private mLastStreamId:I

.field private mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedCacheWhenQuitVIP:Z

.field private mNeedUnlockAfAe:Z

.field protected mPaused:Z

.field private mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field protected mPreOrientation:I

.field protected mPreviewSize:Landroid/util/Size;

.field protected final mQualityLock:Ljava/lang/Object;

.field private mRecorderInitSuccess:Z

.field protected mRestartPreview:Z

.field private mSatSupportWide:Z

.field private mSettingReady:Z

.field private mShutterLongClick:Z

.field protected mSnapShotCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

.field protected volatile mState:I

.field private mTempFileOutputStream:Ljava/io/FileOutputStream;

.field private mTempLocation:Landroid/location/Location;

.field private mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

.field protected mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

.field protected mVideoFrameHeight:I

.field protected mVideoFrameWidth:I

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field protected mVideoQuality:Ljava/lang/String;

.field protected mVideoRatio:D

.field mVideoRecodingOrientation:I

.field private mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

.field private mVideoScannerConnection:Landroid/media/MediaScannerConnection;

.field protected mVideoSuperNightBvLimit:I

.field protected mVideoSuperNightOutBvLimit:I

.field private mWaitforSateChanged:Z


# direct methods
.method public static synthetic $r8$lambda$IpEmW9YS5iyFDcIrEKPb96sEgA4(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    const-string v1, "-1"

    .line 145
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 148
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 149
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 150
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    const-wide/16 v1, 0x0

    .line 158
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    const/4 v2, 0x1

    .line 165
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    .line 167
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/16 v3, -0x14

    .line 168
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    .line 169
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    .line 172
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 173
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 174
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    .line 177
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 178
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    .line 181
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 284
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 462
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 493
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 1581
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    .line 1602
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 188
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    .line 189
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 190
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/media/MediaScannerConnection;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method private checkStorageSpace()Z
    .locals 6

    .line 1153
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1162
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1166
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 651
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentCameraFacingBack()Z
    .locals 1

    .line 644
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 6

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 514
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v5, "key_anti_video"

    invoke-virtual {v1, v5, v4, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSatSupportAntiVideo()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string p0, "on"

    .line 519
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eqz v0, :cond_4

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method private currentSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;)Z
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 538
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 1

    .line 496
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 497
    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 498
    aget p1, p1, p2

    .line 499
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    if-eq p2, p1, :cond_0

    .line 500
    invoke-interface {p3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHighFpsSupport()Z

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 501
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    :cond_0
    return-void
.end method

.method private getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    goto :goto_0

    .line 974
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    :goto_0
    return-object p0
.end method

.method private getBytePerS()J
    .locals 2

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    if-nez v0, :cond_0

    .line 1296
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getBytePerS] mVideoMediaRecorderInfo is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1299
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getBytePerS()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;
    .locals 2

    .line 1692
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "antivideo_default_on"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 1693
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1694
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private getLeftSpace()J
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_0

    .line 1287
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getLeftSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1290
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTargetCameraId()Ljava/lang/String;
    .locals 6

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    .line 661
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTargetCameraId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 662
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private handRecorderStopped(IZ)V
    .locals 6

    .line 1363
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    .line 1364
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 1365
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handRecorderStopped] stop with invalid file, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    .line 1367
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1370
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1371
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1374
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1376
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[handRecorderStopped] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1378
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1379
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1383
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->storingVideoFile(I)V

    return-void
.end method

.method private isSatSupportAntiVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    .line 1680
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1684
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isWideCameraOpen(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1688
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isVideoCameraSupportCurrentQuality(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 3

    .line 1764
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 1765
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v2, "key_video_quality"

    .line 1764
    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6_60"

    .line 1766
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1769
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1770
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "_"

    .line 1771
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    const-string v0, "0"

    .line 1773
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 1774
    new-instance v0, Landroid/util/Size;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    .line 1775
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method private isWideCameraOpen(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "wide_camera"

    .line 679
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 680
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private needReduceFPSTo24(Ljava/lang/String;)Z
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_effect"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "8"

    .line 887
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_enhance"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private needUpdatePreviewSize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "key_video_portrait"

    .line 795
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_quality"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 p1, 0x5

    .line 797
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_0
    return v1

    :cond_1
    const-string v0, "key_video_facebeauty"

    .line 800
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_2
    const-string v0, "key_360_video_hdr"

    .line 804
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_video_hdr_normal"

    .line 805
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "key_video_hdr_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_3
    const-string p0, "key_video_super_night"

    .line 808
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "key_video_super_night_none"

    .line 809
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "key_video_super_night_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "key_video_super_night_scene_4k"

    .line 810
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_4
    const-string p0, "key_video_super_night_yuv"

    .line 813
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "key_video_super_night_yuv_none"

    .line 814
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "key_video_super_night_yuv_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "key_video_super_night_yuv_scene_4k"

    .line 815
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private notifyVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1021
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x200

    .line 1022
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1023
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 997
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x200

    .line 998
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 999
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_0
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

.method private retriggleShutterClick()V
    .locals 6

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getVoiceIntent()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 926
    aget-boolean v1, v0, v1

    const/4 v2, 0x2

    .line 927
    aget-boolean v0, v0, v2

    .line 928
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[retriggleShutterClick] videoIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mOpenOnly = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private settingRelateSwitchCamera(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "key_anti_video"

    .line 631
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_portrait"

    .line 632
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_facebeauty"

    .line 633
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_quality"

    .line 634
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_360_video_hdr"

    .line 635
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_dol_video_hdr"

    .line 636
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_enhance_yuv"

    .line 638
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_super_night"

    .line 639
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "key_video_enhance"

    .line 640
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private updatePreviewSizeOnSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getItelFaceBeautyType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "key_face_beauty"

    .line 825
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 826
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updatePreviewSizeOnSettingChangeStart], headValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mFirstRelationHeaderValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 827
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 828
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 830
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateThumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1029
    instance-of v0, p2, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 1030
    check-cast p2, Ljava/io/FileDescriptor;

    .line 1032
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1034
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1036
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1037
    check-cast p2, Ljava/lang/String;

    .line 1039
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1041
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1044
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateThumbnail] file is invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static videoQualitySupportSAT(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "6_60"

    .line 623
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "8_60"

    .line 624
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "8"

    .line 625
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "11"

    .line 626
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method

.method private videoSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 12

    const-string p0, "key_anti_video"

    .line 577
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const-string p0, "key_video_portrait"

    .line 579
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    const-string p0, "key_video_facebeauty"

    .line 581
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "video_facebeauty_off"

    :cond_2
    move-object v3, p0

    const-string p0, "key_video_makeup"

    .line 583
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move-object v9, v0

    goto :goto_2

    :cond_3
    move-object v9, p0

    :goto_2
    const-string p0, "key_360_video_hdr"

    .line 585
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    move-object v5, v0

    goto :goto_3

    :cond_4
    move-object v5, p0

    :goto_3
    const-string p0, "key_dol_video_hdr"

    .line 587
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, p0

    :goto_4
    const-string p0, "key_video_quality"

    .line 589
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "key_video_enhance"

    .line 590
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    move-object v7, v0

    goto :goto_5

    :cond_6
    move-object v7, p0

    :goto_5
    const-string p0, "key_video_super_night"

    .line 592
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    move-object v8, v0

    goto :goto_6

    :cond_7
    move-object v8, p0

    :goto_6
    const-string p0, "key_video_enhance_yuv"

    .line 594
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    move-object v10, v0

    goto :goto_7

    :cond_8
    move-object v10, v7

    :goto_7
    const-string p0, "key_video_super_night_yuv"

    .line 596
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    move-object v11, v0

    goto :goto_8

    :cond_9
    move-object v11, p0

    .line 599
    :goto_8
    invoke-static/range {v1 .. v11}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private videoSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;Z)Z
    .locals 12

    .line 542
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_anti_video"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    const-string p0, "on"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    :goto_0
    move-object v1, p0

    .line 548
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_portrait"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 551
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_facebeauty"

    const-string v3, "video_facebeauty_off"

    .line 550
    invoke-virtual {p1, p2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, p0

    .line 554
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_makeup"

    .line 553
    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object v9, p0

    .line 556
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_360_video_hdr"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    move-object v5, v0

    goto :goto_4

    :cond_5
    move-object v5, p0

    .line 558
    :goto_4
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_dol_video_hdr"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    move-object v6, v0

    goto :goto_5

    :cond_6
    move-object v6, p0

    .line 560
    :goto_5
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_quality"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_enhance"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    move-object v7, v0

    goto :goto_6

    :cond_7
    move-object v7, p0

    .line 563
    :goto_6
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_super_night"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    move-object v8, v0

    goto :goto_7

    :cond_8
    move-object v8, p0

    .line 565
    :goto_7
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_enhance_yuv"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    move-object v10, v0

    goto :goto_8

    :cond_9
    move-object v10, p0

    .line 567
    :goto_8
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_video_super_night_yuv"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    move-object v11, v0

    goto :goto_9

    :cond_a
    move-object v11, p0

    .line 570
    :goto_9
    invoke-static/range {v1 .. v11}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "off"

    .line 609
    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_0

    .line 610
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "video_facebeauty_off"

    .line 612
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 614
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 616
    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 617
    invoke-virtual {v0, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 618
    invoke-virtual {v0, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 619
    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoQualitySupportSAT(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V
    .locals 6

    .line 1437
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1445
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    :cond_1
    const/4 v2, 0x0

    .line 1446
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 1447
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v2, p1, p3, p4, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/mode/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1449
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_2

    .line 1451
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3, p4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 1453
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1455
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    const-string p3, "_data"

    .line 1456
    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 1457
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getTargetUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 1459
    new-instance p4, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    .line 1460
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    .line 1459
    invoke-interface {v0, v1, p3, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    goto :goto_1

    .line 1462
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 1463
    new-instance p3, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    invoke-direct {p3, p0, p4, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1, p3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_1
    return-void

    .line 1439
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method protected autoWatermark()Z
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_0

    .line 1645
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "autoWatermark mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "key_auto_watermark"

    .line 1649
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 1648
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 1640
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method protected checkMinDuration()Z
    .locals 7

    .line 1410
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1411
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoFileInfo is null,we have not information to save"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1415
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 1416
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1417
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMinDuration, file size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 1419
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1420
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1421
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    goto :goto_0

    .line 1423
    :cond_1
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1426
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1428
    :goto_0
    iget-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isDurationInValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storingVideoFile duration too short, duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public checkPermitBeforeStart()Z
    .locals 0

    .line 1149
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method protected computeRemainedRecorderTime()Ljava/lang/String;
    .locals 8

    .line 1259
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    .line 1261
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] no enough space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getBytePerS()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gtz v2, :cond_1

    .line 1266
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] bytePerS is error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1270
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[computeRemainedRecorderTime] leftSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytePerS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1272
    div-long/2addr v0, v6

    long-to-int p0, v0

    .line 1273
    div-int/lit16 p0, p0, 0x3e8

    .line 1274
    rem-int/lit8 v0, p0, 0x3c

    .line 1275
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 1276
    div-int/lit16 p0, p0, 0xe10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez p0, :cond_2

    .line 1278
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    const-string p0, "%d:%02d:%02d"

    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1280
    :cond_2
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-static {p0, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public creatFileSpec()Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
    .locals 1

    .line 1667
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo;
    .locals 4

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1077
    new-instance v2, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 1078
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    if-eqz p2, :cond_1

    .line 1080
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez p1, :cond_0

    .line 1082
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1085
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 1086
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 1087
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z

    .line 1088
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V

    goto :goto_0

    .line 1091
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    if-nez p1, :cond_2

    .line 1092
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    const-string v3, "tempMediaRecorderFile.tmp"

    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1093
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    .line 1094
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 1096
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1101
    :goto_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    .line 1102
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaInfo time "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1103
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    return-object p0
.end method

.method protected deleteTempFile()V
    .locals 3

    .line 1352
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1354
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

.method protected deleteTempMediaRecorderFile()V
    .locals 2

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 1231
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1232
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 1633
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1634
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

.method public getCurShutterPriority()I
    .locals 0

    .line 394
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    return p0
.end method

.method protected getItelFaceBeautyType(Landroid/content/Context;)I
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "itel_face_beauty_type"

    .line 841
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 211
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    if-eqz p7, :cond_0

    return-object p5

    :cond_0
    const-string p6, "key_super_definition"

    .line 1728
    invoke-interface {p4, p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1729
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p7

    const-string v0, "0"

    if-eqz p7, :cond_1

    .line 1730
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    .line 1731
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 1732
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_8

    .line 1734
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    .line 1736
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportVideoCamera()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1737
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_brightbess_value"

    .line 1738
    invoke-interface {p4, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "value_light"

    .line 1739
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1740
    invoke-direct {p0, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoCameraSupportCurrentQuality(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move-object p5, p1

    goto :goto_1

    .line 1744
    :cond_4
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1745
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 1746
    :cond_5
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-nez p1, :cond_6

    const-string p1, "on"

    invoke-static {p6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1747
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 1748
    invoke-static {p0, p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    move-object p5, p0

    goto :goto_1

    .line 1754
    :cond_6
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    :goto_0
    move-object p5, v0

    :cond_8
    :goto_1
    return-object p5
.end method

.method public getOutputDataType()I
    .locals 0

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

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 943
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getPreviewSize videoFrameSize is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 947
    :cond_0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method protected getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    const/4 v6, 0x1

    const/16 v7, 0x438

    const/4 v8, 0x0

    move-object v0, p1

    move-wide v1, p2

    move-object v3, p4

    .line 954
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getVideoBeautyType(Landroid/content/Context;)I
    .locals 0

    const-string p0, "video_facebeauty_type"

    .line 836
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVideoOrientation()I
    .locals 5

    .line 1128
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getVideoOrientation] mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_mirror"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    .line 1135
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1136
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1137
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v3

    if-eq v3, v2, :cond_3

    :cond_1
    :goto_0
    move v1, v4

    goto :goto_1

    :cond_2
    if-nez v2, :cond_1

    .line 1139
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1141
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    .line 1142
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 1143
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

.method public getVideoRecodingOrientation()I
    .locals 0

    .line 1120
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    return p0
.end method

.method protected getVideoSavingMessage()Ljava/lang/String;
    .locals 1

    .line 1051
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 8

    .line 231
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 232
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    const-string p6, "sat_support_wide"

    invoke-static {p4, p6, p5}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    .line 233
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string p5, "video_super_night_bv"

    invoke-static {p4, p5}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Lcom/transsion/camera/utils/FeatureSupport;->getVideoSuperNightBvDebug(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    const-string p4, "video_super_night_bv_out"

    .line 234
    invoke-static {p1, p4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p5

    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->setAodCamera(Z)V

    .line 238
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p4, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V

    .line 239
    new-instance p4, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-object v0, p4

    move-object v1, p1

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;)V

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    .line 240
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->init()V

    .line 241
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 255
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->setVideoWithP3Preview()V

    const-string p1, "key_video_quality"

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_anti_video"

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_portrait"

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_facebeauty"

    .line 260
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_storage"

    .line 261
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_super_night"

    .line 262
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_enhance"

    .line 263
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_super_night_yuv"

    .line 264
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_enhance_yuv"

    .line 265
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_algorithm_migrate"

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_makeup"

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_effect"

    .line 268
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_frame"

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 270
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 p2, 0x5

    if-eq p2, p1, :cond_0

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_0
    const/4 p1, 0x0

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    return-void
.end method

.method protected isDurationInValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const-wide/16 v0, 0x1f4

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isInVideoHDRState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract isModeSupport360VideoHDR(Landroid/content/Context;)Z
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    .line 1672
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "antivideo_default_on"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1676
    :cond_0
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected needAudio()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected needMirror()Z
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1656
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1657
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyPictureTaken([BZI)I
    .locals 1

    const/4 p3, 0x0

    .line 1621
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 1622
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    const/16 p2, 0x200

    .line 1624
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1625
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    return p3
.end method

.method protected notifyRawActionToUI(I)V
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_0

    .line 1542
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

    .line 1546
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyRecordStateChanged(Z)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_0

    .line 1190
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyRecordStateChanged mSettingController is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1193
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_record_state"

    .line 1194
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    .line 1195
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected notifyToAppUI(IILjava/lang/String;)V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_0

    .line 1552
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

    .line 1556
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToIdle()V
    .locals 3

    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/16 v0, 0x3b

    .line 1526
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1527
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 1528
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .locals 2

    .line 1560
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$3;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1572
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

    .line 1567
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_2

    .line 1568
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_0

    .line 1562
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_2

    .line 1563
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->leave(ZZZ)Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 910
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 912
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->operationPrepared()V

    .line 913
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 914
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 915
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 917
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    if-eqz p1, :cond_1

    .line 918
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->retriggleShutterClick()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged start, isQuitVIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    const/4 p1, 0x0

    .line 363
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 364
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 367
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    const-string v2, "-1"

    .line 368
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v0, p1, p1, v1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->leave(ZZZ)Z

    .line 371
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 372
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onConfigurationChanged end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 369
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "key_video_quality"

    .line 905
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 224
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    return-object p0
.end method

.method public onMediaRecorderPaused()V
    .locals 1

    .line 1304
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .locals 1

    const/16 v0, 0x10

    .line 1338
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .locals 4

    .line 1219
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempMediaRecorderFile()V

    .line 1220
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 1221
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    .line 1222
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 1226
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .locals 1

    const/16 v0, 0xf

    .line 1214
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderResumed()V
    .locals 1

    .line 1309
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .locals 1

    .line 1250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->computeRemainedRecorderTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 1254
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1255
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .locals 1

    const/16 v0, 0x33

    .line 1331
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1332
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1333
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->handRecorderStopped(IZ)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .locals 1

    .line 1314
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1315
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onMediaRecorderStopping] stop with invalid file, reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1319
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[onMediaRecorderStopping] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    const/4 p1, 0x0

    .line 1321
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1322
    sget-object p1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 1323
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x3

    const/16 p2, 0x64

    .line 1326
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method protected onSATStreamIdChanged(IIZZ)V
    .locals 0

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .locals 7

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeDone headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 775
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 776
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSettingChangeDone mRestartPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " headerKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_0

    .line 779
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "key_quality_recover_default"

    .line 782
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    if-eqz p1, :cond_2

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 786
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    const-string p1, "-1"

    .line 787
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 788
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    const/4 p1, 0x0

    .line 789
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    :cond_2
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeStart headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , headValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstRelationHeaderValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 766
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 767
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updatePreviewSizeOnSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 701
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    const-string v1, "on"

    if-eqz v0, :cond_0

    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "wide_camera"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    const-string v3, "key_video_quality"

    const-string v4, "key_video_makeup"

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 709
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 710
    :cond_1
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    return-void

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getTargetCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "key_dol_video_hdr"

    .line 716
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 717
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v2

    .line 719
    :cond_3
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;)V

    .line 722
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 724
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 730
    :cond_4
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 731
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 734
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needUpdatePreviewSize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "key_anti_video"

    .line 735
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 736
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-eq v0, p2, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "key_video_enhance_yuv"

    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "key_video_enhance"

    .line 738
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "key_video_effect"

    .line 739
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "key_video_frame"

    .line 740
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 741
    :cond_7
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    :cond_8
    const-string v0, "key_storage"

    .line 744
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "external"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    if-nez v0, :cond_9

    .line 745
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChangeDone(Ljava/lang/String;)V

    .line 748
    :cond_9
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 749
    iput-boolean v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    :cond_a
    const-string v0, "key_algorithm_migrate"

    .line 751
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    :cond_b
    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingReady, mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "-1"

    .line 467
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 471
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    .line 475
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onSettingReady] cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_2

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_0

    .line 481
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 482
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    .line 485
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getItelFaceBeautyType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 487
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "off"

    goto :goto_1

    :cond_3
    const-string v0, "on"

    .line 488
    :goto_1
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isInVideoHDRState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 402
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x514

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 405
    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x0

    .line 414
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    const/16 p1, 0xf

    .line 415
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 416
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 417
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    goto :goto_1

    .line 419
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->startStop()V

    :goto_1
    return v0

    .line 407
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    return v0
.end method

.method public onShutterLongClick(I)Z
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterLongClick mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 429
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    return v0

    .line 433
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x15

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v0
.end method

.method public onShutterUp(I)V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterUp, mShutterLongClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 442
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 447
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_1
    return-void
.end method

.method protected onSnapShotStart()V
    .locals 0

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V

    .line 1006
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1008
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1012
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1013
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p0, 0x200

    .line 1014
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1015
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    .line 982
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 988
    :cond_0
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 989
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p0, 0x200

    .line 990
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 991
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
.end method

.method public onVideoRestartPreviewed()V
    .locals 1

    const/16 v0, 0x10

    .line 937
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 344
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 345
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 347
    :try_start_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    const-string v2, "-1"

    .line 348
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->leave(ZZZ)Z

    .line 351
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 352
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 356
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void

    :catchall_0
    move-exception p0

    .line 349
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected final pauseResumeRecording()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseResumeRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1071
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->pauseResume()V

    return-void
.end method

.method protected prepareVideoData()I
    .locals 8

    .line 847
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v2, :cond_0

    .line 850
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    .line 854
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "_"

    .line 860
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 861
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v3, :cond_5

    .line 862
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 864
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    float-to-double v6, v4

    iput-wide v6, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 865
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 866
    iput v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    const-string v3, "6_60"

    .line 869
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "8_60"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 874
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needReduceFPSTo24(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x18

    .line 875
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_2

    .line 870
    :cond_3
    :goto_1
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_4

    .line 871
    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x2

    .line 872
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 877
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareVideoData configRecorder quality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoFrameRate = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->configRecorder(Landroid/media/CamcorderProfile;)V

    .line 879
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1

    :catchall_0
    move-exception p0

    .line 854
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected refreshShutterType()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getShutterTypeSelftimerOff()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 330
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    :cond_1
    return-void
.end method

.method protected abstract sendNotification(Landroid/content/Context;)V
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    move-result-object p1

    .line 1114
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    :cond_0
    return-void
.end method

.method protected abstract showInfo(I)V
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected starStopHDRRecording()V
    .locals 0

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .locals 2

    .line 1175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    .line 1176
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_0

    .line 1178
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1181
    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const/4 p1, 0x1

    .line 1182
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1183
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 1184
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return p1
.end method

.method public stopRecording(Z)Z
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_0

    .line 1202
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[stopRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1205
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRecording()V

    if-eqz p1, :cond_1

    .line 1207
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startPreview()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected stopSlowMotionRecording()V
    .locals 2

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->leave(ZZZ)Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .locals 6

    .line 1388
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    .line 1389
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1399
    invoke-virtual {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    const/16 v1, 0x64

    .line 1403
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 1404
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/mode/VideoFileInfo;IJ)V

    return-void

    .line 1391
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1393
    invoke-virtual {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 8

    .line 292
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 293
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->unInit()V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateVideoSurface to null in unInit."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    .line 298
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    const-string v0, "key_video_quality"

    .line 299
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_anti_video"

    .line 300
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_portrait"

    .line 301
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_facebeauty"

    .line 302
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_storage"

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_super_night"

    .line 304
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_enhance"

    .line 305
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_super_night_yuv"

    .line 306
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_enhance_yuv"

    .line 307
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_algorithm_migrate"

    .line 308
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_makeup"

    .line 309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_ae_af_lock_state"

    .line 310
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_effect"

    .line 311
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_frame"

    .line 312
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 313
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq v0, v1, :cond_1

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_1
    return-void
.end method

.method protected updateLowLight(Z)V
    .locals 0

    return-void
.end method

.method protected updateMuteRecoder(Z)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->updateMuteRecoder(Z)V

    :cond_0
    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 381
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 382
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 383
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    const/16 v0, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method protected updateQuality(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuality new quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 893
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    :goto_0
    return-object p1
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 3

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1063
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1065
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->storageUnMount()V

    :cond_0
    return-void
.end method

.method protected updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .locals 6

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_0

    .line 1242
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateVideoSurface] mCameraDeviceControl is null when video mode update surface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    move v2, p4

    move v3, p2

    move v4, p3

    move v5, p5

    .line 1245
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 3

    .line 1702
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result v0

    .line 1703
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1704
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_1

    return-object v1

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    const/16 p0, 0x23

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method protected final videoSnapShot()V
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->videoSnapShot(Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;)Z

    return-void
.end method
