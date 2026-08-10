.class public Lcom/transsion/camera/feature/setting/zoom/Zoom;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Zoom.java"


# static fields
.field static final INIT_SAT_VALUE:Ljava/lang/String; = "60"

.field static final INIT_VALUE:Ljava/lang/String; = "100"

.field private static final INVALID_VALUE:Ljava/lang/String; = "0"

.field private static final LIMIT_VALUE_INT_DOCUMENT_FOR_2POINT5X:I = 0x190

.field private static final LIMIT_VALUE_INT_DOCUMENT_FOR_2X:I = 0x1f4

.field private static final LIMIT_VALUE_INT_SLIM_BODY_FOR_2POINT5X:I = 0x190

.field private static final LIMIT_VALUE_INT_SLIM_BODY_FOR_2X:I = 0x1f4

.field private static final LIMIT_VALUE_IN_FUN_VIDEO_FOR_2POINT5X:I = 0x258

.field private static final LIMIT_VALUE_IN_FUN_VIDEO_FOR_2X:I = 0x2ee

.field private static final LIMIT_VALUE_IN_FUN_VIDEO_FOR_5X:I = 0x12c

.field private static final LIMIT_VALUE_IN_SLIM_BODY_FOR_5X:I = 0xc8

.field private static final LIMIT_VALUE_IN_SLIM_BODY_FOR_SAT:I = 0x3e8

.field private static final LIMIT_VALUE_IN_VIDEO_FOR_2POINT5X:I = 0x258

.field private static final LIMIT_VALUE_IN_VIDEO_FOR_2X:I = 0x2ee

.field private static final LIMIT_VALUE_IN_VIDEO_FOR_5X:I = 0x12c

.field private static final LIMIT_VALUE_IN_VIDEO_FOR_SAT:I = 0x5dc

.field private static final LIMIT_VALUE_NO_VIDEO_FOR_2X:I = 0x1f4

.field public static final MODE_ENTRY_KEY:Ljava/lang/String; = "mode_entry_key"


# instance fields
.field private lastCameraIsBase:Z

.field private lastCameraIsTele:Z

.field private mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mCurrentFeature:[Ljava/lang/String;

.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentModeKey:Ljava/lang/String;

.field private mDocumentMode:Z

.field private mForceApplyValue:Ljava/lang/String;

.field private mFovCropValue:Ljava/lang/String;

.field private mFunVideoMode:Z

.field private mIsAsdMode:Z

.field private mIsBaseCameraWhenOpened:Z

.field private mIsCameraIdChangedInSameMode:Z

.field private mIsDualVideoMode:Z

.field private mIsFrontWideCameraWhenOpened:Z

.field private mIsMacroSupportZoom:Z

.field private mIsMaxValueLimited:Z

.field private mIsModeChanged:Z

.field private mIsMovieMode:Z

.field private mIsNeedStoreZoomInBack:Z

.field private mIsPMasterMode:Z

.field private mIsSATCameraWhenOpened:Z

.field private mIsSlowMotionMode:Z

.field private mIsTeleCameraWhenOpened:Z

.field private mIsVideoMode:Z

.field private mIsWideCameraWhenOpened:Z

.field private mIsWideSupportZoom:Z

.field private mMinimizeZoomStep:Z

.field private mNeedRodeBySaveValue:Z

.field private mNeedSaveZoomValue:Z

.field private mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSatReplaceWide:Z

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTimeLapseVideoMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsCameraIdChangedInSameMode:Z

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    const-string v1, ""

    .line 91
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->lastCameraIsTele:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->lastCameraIsBase:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    .line 99
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    const-string v0, "0"

    .line 318
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/zoom/Zoom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private currentIsBaseCamera()Z
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontCamera()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentIsFrontWideCamera()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentIsSatPeriscopeCamera()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->getStreamId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private currentIsTeleCamera()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentIsWideCamera()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFovCropValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "front_crop_fov_value"

    .line 562
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMacroSupportZoom(Landroid/content/Context;)Z
    .locals 1

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_macro_support_zoom"

    .line 434
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSwitchToVideoCamera()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->videoCameraSupportSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_brightbess_value"

    .line 568
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "value_dark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWideSupportZoom(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "zoom_style_type"

    .line 557
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private minimizeZoomStep(Landroid/content/Context;)Z
    .locals 1

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "minimize_zoom_step"

    .line 439
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setZoomByItemClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 594
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "front_crop_fov"

    .line 598
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 599
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "key_wide_camera_item_seleccted"

    .line 601
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "value_wide_camera_item_single_cam_seleccted"

    .line 602
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "100"

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_3
    return-void
.end method

.method private shouldShowTips()Z
    .locals 5

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v1

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsSatPeriscopeCamera()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    if-eqz v4, :cond_0

    return v3

    :cond_0
    if-eqz v0, :cond_1

    .line 156
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsCameraIdChangedInSameMode:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->lastCameraIsBase:Z

    if-nez v4, :cond_1

    return v3

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 159
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method private updateModeParameter()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentFeature:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 621
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 622
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontWideCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 623
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->lastCameraIsTele:Z

    .line 624
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsTeleCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    .line 625
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->lastCameraIsBase:Z

    .line 626
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsBaseCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsBaseCameraWhenOpened:Z

    .line 627
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentSatCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    return-void
.end method

.method private videoCameraSupportSize()Z
    .locals 4

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 573
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    .line 572
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6_60"

    .line 574
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 577
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    .line 578
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 579
    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v1, "_"

    .line 580
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    const-string v1, "0"

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 583
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 584
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v2
.end method


# virtual methods
.method public currentSatCamera()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public forceApplyValue(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .locals 4

    .line 311
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_0

    .line 314
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method public getLimitValueForDocument()I
    .locals 3

    .line 513
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_3

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    const/16 v0, 0xc8

    const/16 v1, 0x1f4

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xfa

    if-ne p0, v2, :cond_2

    const/16 p0, 0x190

    return p0

    :cond_2
    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForFunVideo()I
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_2

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x12c

    return p0

    :cond_0
    const/16 v0, 0xfa

    if-ne p0, v0, :cond_1

    const/16 p0, 0x258

    return p0

    :cond_1
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_2

    const/16 p0, 0x2ee

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForMovieMode()I
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_2

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x12c

    return p0

    :cond_0
    const/16 v0, 0xfa

    if-ne p0, v0, :cond_1

    const/16 p0, 0x258

    return p0

    :cond_1
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_2

    const/16 p0, 0x2ee

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForSlimBody()I
    .locals 3

    .line 497
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_3

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    const/16 v0, 0xc8

    const/16 v1, 0x1f4

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0xfa

    if-ne p0, v2, :cond_2

    const/16 p0, 0x190

    return p0

    :cond_2
    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getLimitValueForVideo()I
    .locals 3

    .line 457
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x5dc

    return p0

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-eqz v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    const/16 p0, 0x12c

    return p0

    :cond_1
    const/16 v2, 0xfa

    if-ne v0, v2, :cond_4

    .line 464
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/16 p0, 0x258

    return p0

    :cond_4
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_7

    .line 470
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    if-nez v0, :cond_6

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    const/16 p0, 0x2ee

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    .line 230
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 217
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getFovCropValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isMacroSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMacroSupportZoom:Z

    .line 167
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isWideSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideSupportZoom:Z

    .line 168
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->minimizeZoomStep(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMinimizeZoomStep:Z

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p2, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "front_crop_fov"

    invoke-virtual {p2, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "need_memory_zoom_value"

    invoke-virtual {p2, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 172
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sat_replace_wide"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 189
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->currentIsFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "front_crop_fov"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFovCropValue:Ljava/lang/String;

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->isInsensorZoomStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "60"

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    const-string v0, "0"

    if-eq p2, v0, :cond_2

    move-object p1, p2

    .line 202
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 204
    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p1, :cond_3

    .line 206
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_3
    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    return-void
.end method

.method public isInsensorZoomStatus()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsAsdMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSatReplaceWide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaxValueLimited()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsPMasterMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

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

.method public isMovieMode()Z
    .locals 0

    .line 493
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMovieMode:Z

    return p0
.end method

.method public isSlowMotionMode()Z
    .locals 0

    .line 489
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    return p0
.end method

.method public minimizeZoomStep()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mMinimizeZoomStep:Z

    return p0
.end method

.method public onCameraClosedBefore()V
    .locals 5

    .line 373
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraClosedBefore()V

    const-string v0, "100"

    .line 374
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_0

    .line 377
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 613
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 614
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsCameraIdChangedInSameMode:Z

    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->updateModeParameter()V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 363
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsMaxValueLimited:Z

    .line 364
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    .line 365
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    .line 366
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsNeedStoreZoomInBack:Z

    const-string p1, "0"

    .line 367
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    .line 368
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsCameraIdChangedInSameMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentModeKey:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentFeature:[Ljava/lang/String;

    .line 346
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "mode_entry_key"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->updateModeParameter()V

    .line 349
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 350
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsModeChanged:Z

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->forceUpdateValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChangedOnly], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
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

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "value_zoom_support_macro_active"

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "value_zoom_support_wide_active"

    const-string v4, "100"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_5

    .line 241
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "wide_camera_zoom_override_value"

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_9

    .line 261
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_9

    .line 262
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 263
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    add-int/2addr p3, v5

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 267
    invoke-super {p0, p1, v4, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 269
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_9

    .line 270
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto/16 :goto_3

    :cond_2
    const-string v0, "value_zoom_support_dol_hdr_active"

    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p2

    .line 276
    invoke-super {p0, p1, v4, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_9

    .line 278
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto/16 :goto_3

    .line 281
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-eqz p2, :cond_9

    .line 282
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsWideCameraWhenOpened:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsFrontWideCameraWhenOpened:Z

    if-eqz p1, :cond_9

    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_9

    .line 283
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_3

    :cond_5
    :goto_0
    if-eqz p3, :cond_9

    .line 242
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 243
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v7

    .line 246
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 247
    invoke-interface {v7, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-interface {v7, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 248
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_1
    invoke-super {p0, p1, p2, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 250
    iput-boolean v6, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedRodeBySaveValue:Z

    goto :goto_2

    .line 251
    :cond_7
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 252
    invoke-super {p0, p1, v4, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 255
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_9

    .line 256
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_9
    :goto_3
    return-void
.end method

.method public pause()V
    .locals 5

    .line 383
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 384
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "100"

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 387
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mNeedSaveZoomValue:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const-string v0, "0"

    .line 327
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mForceApplyValue:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public shouldLimitForDocument()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mDocumentMode:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldLimitForFunVideo()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mFunVideoMode:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldLimitForVideo()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsTeleCameraWhenOpened:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSATCameraWhenOpened:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsVideoMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mTimeLapseVideoMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsSlowMotionMode:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mIsDualVideoMode:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showTeleTips()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->shouldShowTips()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 178
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "front_crop_fov"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "need_memory_zoom_value"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
