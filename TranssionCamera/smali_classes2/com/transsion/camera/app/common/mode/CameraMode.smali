.class public abstract Lcom/transsion/camera/app/common/mode/CameraMode;
.super Ljava/lang/Object;
.source "CameraMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/ICameraMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/transsion/camera/app/common/mode/IImageProcessor<",
        "TD;>;D:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/mode/ICameraMode<",
        "TT;TD;>;"
    }
.end annotation


# static fields
.field public static final ASPECT_TOLERANCE:D = 0.01

.field public static final ASPECT_TOLERANCE_2:D = 0.02

.field private static final TEMP_RECORD_FILE:Ljava/lang/String; = ".temp_record"


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBatteryStatus:I

.field protected mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field protected mContext:Landroid/content/Context;

.field protected mCurShutterPriority:I

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field protected mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

.field protected mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field protected volatile mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field protected mIsCurModeSupportQC:Z

.field private mIsValid:Z

.field protected mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field protected mMemSize:I

.field private mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field protected mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field protected mModeSwitch:Z

.field private final mName:Ljava/lang/String;

.field protected mNeedCloseQuickPreview:Z

.field private mOrientation:I

.field protected mPhotosSupportProcessingApi:Z

.field protected mPreviewSize:Landroid/util/Size;

.field private mProjectAuxSupported:Z

.field protected mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

.field protected mScreenFormType:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTemperatureStatus:I

.field protected mUseGooglePhotosDefault:Z

.field protected mWideSupportSuperdefinition:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 64
    new-instance v2, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/common/mode/CameraMode$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/mode/CameraMode;Lcom/transsion/camera/app/common/mode/CameraMode$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "0"

    .line 65
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    .line 75
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    .line 76
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    .line 78
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    .line 83
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mBatteryStatus:I

    .line 84
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTemperatureStatus:I

    .line 87
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    .line 93
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    .line 95
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-void
.end method

.method protected static mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyKeys()Ljava/util/List;

    move-result-object v0

    .line 663
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 664
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private needReopenFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 3

    .line 874
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    .line 875
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, p1, p2, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 876
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method private needReopenFromWide(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 857
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 858
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "wide_camera"

    .line 862
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "key_macro"

    .line 864
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 863
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_1

    :cond_2
    move p2, v1

    .line 865
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportWideCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_4

    .line 866
    :cond_3
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method


# virtual methods
.method protected final aeLockSupport()Z
    .locals 1

    .line 699
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 700
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->aeLockSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected final afLockSupport()Z
    .locals 3

    .line 704
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 706
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 705
    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/CameraRepository;->continuousFocusSupport(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public checkSingleCapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createTempRecordFile()Ljava/io/File;
    .locals 2

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 807
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 810
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 0

    return-void
.end method

.method public getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move v1, p6

    .line 550
    iput-boolean v1, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    .line 551
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurShutterPriority()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDataFlowType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public getOrientation()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return p0
.end method

.method public getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 5

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    const-string v1, "string"

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aod_override_mode_screen_size"

    .line 293
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "override_mode_screen_size"

    .line 296
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "override mode screen size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 304
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailSource()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getVideoRecodingOrientation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode init cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p3, :cond_0

    .line 139
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 144
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 145
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 146
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    .line 148
    iput p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    .line 149
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const p6, 0x7fffffff

    invoke-interface {p4, p0, p6}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    .line 150
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p2

    new-instance p6, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    invoke-direct {p6, p1}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;-><init>(Landroid/content/Context;)V

    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p4, p2, p6, p7}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p2, p5}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateCameraId(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getModeSupportAlgos()[I

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v6

    move-object v4, p5

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeInit([ILcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 155
    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "project_aux_surface_support"

    .line 156
    invoke-static {p2, p4, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "close_quick_preview"

    .line 158
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mNeedCloseQuickPreview:Z

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "wide_support_superdefinition"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mWideSupportSuperdefinition:Z

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "use_google_photos_default"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mUseGooglePhotosDefault:Z

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "photos_support_processing_api"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mode init mMemSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isBgCapturing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final isCameraFacingBack()Z
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 685
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isForceRecreateSession()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedDeviceCaptureSound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportAuxPreview()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mProjectAuxSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportAuxPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportBWCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBackFakeDualLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBackgroundPreview()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualCamBW(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .locals 0

    .line 449
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportFrontWideCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportHighDefinition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMacroCamera()Z
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportMacroCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportPeriscopeCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportSecondLogicalCamera(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportVideoCamera()Z
    .locals 0

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportVideoCamera()Z

    move-result p0

    return p0
.end method

.method public isSupportWideCamera()Z
    .locals 0

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportWideCamera()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    return p0
.end method

.method protected final lock3A(Z)V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock3A lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 796
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_AWB_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 798
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->get3aRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 797
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_2

    const-string p1, "key_white_balance"

    .line 801
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final lockAe(Z)V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAe lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 763
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 765
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAeRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 764
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 767
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_2

    const-string p1, "key_exposure"

    .line 768
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final lockAeAf(Z)V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAeAf lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 785
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 787
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAeAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 786
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 789
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_2

    const-string p1, "key_focus"

    .line 790
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected final lockAf(Z)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockAf lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 774
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 776
    invoke-static {}, Lcom/transsion/camera/app/common/mode/Restriction3A;->getAfRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string p1, "on"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 775
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_2

    const-string p1, "key_focus"

    .line 779
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public needOpenPortraitCamera(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needQCSaveJpegToFile([BZ)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 2

    .line 838
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_macro"

    .line 839
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "on"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 840
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportMacroCamera()Z

    move-result p0

    if-eqz v0, :cond_0

    .line 842
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 844
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wide_camera"

    .line 827
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 828
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportWideCamera()Z

    move-result p0

    if-eqz p1, :cond_0

    .line 829
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needUnintModeWhenPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureTaken([BZI)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifySwitchByUser(Z)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 502
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mBatteryStatus:I

    .line 503
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTemperatureStatus:I

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConfigAfterStopPreview()V
    .locals 0

    return-void
.end method

.method public onConfigBeforeStartPreview()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 0

    return-void
.end method

.method public onContinueShutterStart()V
    .locals 0

    return-void
.end method

.method public onContinuousShotFailed()V
    .locals 0

    return-void
.end method

.method public onContinuousShotProgress([B)V
    .locals 0

    return-void
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 168
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    return-object p0
.end method

.method public onFirstSteadyFrame()V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onFirstSteadyFrame()V

    return-void
.end method

.method public onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    return-void
.end method

.method public onModeCaptureFailed()V
    .locals 0

    return-void
.end method

.method public onModeCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mOrientation:I

    return-void
.end method

.method public onPostViewData([B)V
    .locals 0

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSettingChanged] key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSettingReady()V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onSettingReady()V

    return-void
.end method

.method public onShutterCancel()V
    .locals 0

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterStart(Z)V
    .locals 0

    return-void
.end method

.method public onShutterUp(I)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceDrawn()V
    .locals 0

    return-void
.end method

.method public onThumbNailTypeConfirmed(I[I)V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onThumbNailTypeConfirmed] type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    new-instance p2, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;-><init>(I)V

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->pause()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModePaused()V

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModePaused()V

    .line 218
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModePauseTime(Ljava/lang/String;)V

    return-void
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .locals 1

    .line 738
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraMode$1;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAeAf(Z)V

    goto :goto_0

    .line 743
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    goto :goto_0

    .line 740
    :cond_3
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAe(Z)V

    :goto_0
    return-void
.end method

.method protected final pocketScreen()Z
    .locals 1

    .line 128
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public removeBgCaptureThumb()V
    .locals 0

    return-void
.end method

.method public reopenForNormalOrFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 1

    .line 850
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenFromWide(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    .line 851
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenFromSat(Ljava/lang/String;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez v0, :cond_1

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

.method public resetBgEnable()V
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_0

    .line 883
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->resetBgEnable()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->resume()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeResumed()V

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 206
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 207
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeResumeTime()V

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
    .locals 0

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .locals 0

    return-void
.end method

.method public setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    return-void
.end method

.method public setSupportQuickCapture(Z)V
    .locals 0

    .line 908
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsCurModeSupportQC:Z

    return-void
.end method

.method protected stopFaceDetectionIfNeeded()V
    .locals 2

    .line 727
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopFaceDetectionIfNeeded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopFaceDetection()V

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v0, "key_face_detection"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->aeAfLockSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isCameraFacingBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1

    .line 693
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 695
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->aeLockSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1

    .line 714
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 716
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mode unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModeUnInit()V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mIsValid:Z

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->unInit()V

    .line 192
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->clearCache()V

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected unlockAeAfIfNeeded()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 722
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateLockedHint(Z)V

    :cond_0
    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode updateCurrentCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateCameraId(Ljava/lang/String;)V

    return-void
.end method

.method public updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final updateLockedHint(Z)V
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_0

    const/16 p1, 0x6e

    goto :goto_0

    :cond_0
    const/16 p1, 0x6f

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 569
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IImageProcessor;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
