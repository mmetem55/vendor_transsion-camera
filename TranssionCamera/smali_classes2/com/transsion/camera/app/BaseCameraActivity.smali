.class public abstract Lcom/transsion/camera/app/BaseCameraActivity;
.super Lcom/transsion/camera/app/PermissionActivity;
.source "BaseCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;,
        Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;,
        Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;,
        Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

.field private mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

.field protected mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field protected mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

.field private final mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

.field private final mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

.field private mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

.field private mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

.field private mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

.field private mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

.field private final mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

.field protected mChoseGallery:I

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field protected mGoingToARCore:Z

.field protected mGoingToGallery:Z

.field protected mGotoGalleryUseAnimation:Z

.field private mHasCameraDevice:Z

.field private final mIThermalThrottleListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBrightnessReduced:Z

.field protected mIsResumed:Z

.field protected mIsSkyShopGuideSupport:Z

.field protected mIsSuperNightGuideSupport:Z

.field protected mIsVideoPowerSavingModeSupport:Z

.field private mKeepGoingToARCoreTime:J

.field protected mLensDirtyHintSupported:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

.field protected mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field protected mNeedCreateVideoSurface:Z

.field private mNotLoadLatestThumbnail:Z

.field private mOrientation:I

.field private mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

.field private final mOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

.field private mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

.field protected mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mStartActivityFromCameraFlag:Z

.field private mState:Lcom/transsion/camera/app/common/IApp$State;

.field private mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

.field private mThumbnailMimeType:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;

.field protected mUseLifecycleBroadcast:Z

.field private mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

.field protected mVoiceInteractionRoot:Z


# direct methods
.method public static synthetic $r8$lambda$N2pkDI0KDMWT9SooDe_LnP1Q918(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SWIuQliz-sBqfVz45uuXrv5zgnM()Z
    .locals 1

    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$onResumeTasks$2()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$fHE4P6JNGgUs0lVg2aSIOsPoIRs()Z
    .locals 1

    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$onCreateTasks$1()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$zBxd_GrNLoSnWtNcWzgcQLXEZkQ(Lcom/transsion/camera/app/BaseCameraActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->lambda$new$3(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;-><init>()V

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    .line 166
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 196
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    .line 198
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 324
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    .line 479
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$2;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

    .line 1437
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    .line 1463
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$4;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/BaseCameraActivity;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/BaseCameraActivity;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$1200(II)I
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/net/Uri;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$State;)Lcom/transsion/camera/app/common/IApp$State;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->recoverScreenBrightness()V

    return-void
.end method

.method static synthetic access$2002(Lcom/transsion/camera/app/BaseCameraActivity;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/BaseCameraActivity;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->setNotLoadLatestThumbnail(Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/transsion/camera/app/BaseCameraActivity;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/BaseCameraActivity;ZII)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->doOnBatteryStatusChanged(ZII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLensDirtyTipIfNeed()V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    return-object p0
.end method

.method static synthetic access$800()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 101
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 1006
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private doEnableWaitPage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->resetWaitPage()V

    goto :goto_0

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->removeWaitPage()V

    :goto_0
    return-void
.end method

.method private doOnBatteryStatusChanged(ZII)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBatteryStatusChanged(ZII)V

    .line 856
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_1

    .line 857
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method

.method private initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V
    .locals 3

    .line 1379
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initDeviceControl"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1380
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1381
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1382
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0, p2, p0, v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 1383
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 1385
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraDisconnectedImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V

    .line 1386
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1387
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateScreenFromeType(I)V

    .line 1388
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private static isAngleChanged(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, p1

    .line 998
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 999
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 3

    .line 1438
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HingeState] DeviceStateCallback onStateChanged, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v1, :cond_4

    .line 1441
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportColumnUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    .line 1443
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1446
    :cond_2
    iget p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    if-eqz p1, :cond_0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 1456
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 1457
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->processFoldingFeatureState(I)V

    goto :goto_2

    .line 1459
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$onCreateTasks$1()Z
    .locals 2

    .line 456
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onCreate queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$onResumeTasks$2()Z
    .locals 2

    .line 654
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onResume queueIdle."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 3

    .line 944
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getScreenPocketSystemOrientation()I

    move-result p0

    .line 945
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenPocketDefaultOrientation systemOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_1

    .line 947
    :cond_1
    :goto_0
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    :goto_1
    return-void
.end method

.method private recoverScreenBrightness()V
    .locals 4

    .line 307
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "InitialBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result v1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenBrightness(Landroid/app/Activity;F)V

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v1, :cond_2

    const-string v1, "Touch again in Recording."

    .line 315
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 319
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private removeWaitPage()V
    .locals 1

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetWaitPage()V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 1010
    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private setNotLoadLatestThumbnail(Z)V
    .locals 0

    .line 1185
    iput-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    return-void
.end method

.method private showLensDirtyTipIfNeed()V
    .locals 3

    .line 1400
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_0

    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1406
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1407
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private unInitDeviceControl()V
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraStateCallback:Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1394
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V

    .line 1395
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V

    .line 1396
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unInit()V

    return-void
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 5

    .line 1189
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1190
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1191
    sget-object v2, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useGooglePhotosDefault useGooglePhotosDefault = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1193
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.REVIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-eqz p3, :cond_0

    const-string p2, "image/jpeg"

    .line 1196
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 1198
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "processing_uri_intent_extra"

    .line 1199
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "isCamera"

    const/4 p2, 0x1

    .line 1203
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1204
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z

    move-result p1

    .line 1205
    iget p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "transition_name"

    const-string p3, "testgotogallery"

    .line 1206
    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness"

    invoke-static {p1, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    add-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p1, p3

    if-eqz v1, :cond_2

    const-string p3, "brightness"

    .line 1214
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1217
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1219
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x10000000

    .line 1220
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const p1, 0x8000

    .line 1222
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1224
    :goto_2
    iget p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-ne p0, p2, :cond_4

    const-string p0, "com.google.android.apps.photos"

    .line 1225
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    const-string p0, "com.google.android.apps.photosgo"

    .line 1227
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string p0, "com.gallery20"

    .line 1229
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 1230
    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1231
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    .line 1232
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_3
    return-object v3
.end method

.method protected correctOrientation(I)I
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez p0, :cond_0

    return p1

    .line 991
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->changeOrientation(I)I

    move-result p0

    return p0
.end method

.method protected disableMonitors()V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->pause()V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->stop()V

    const/4 v0, 0x0

    .line 703
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 705
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected doOnThermalThrottleChanged(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 912
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    .line 920
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalThrottleChanged(I)V

    goto :goto_0

    .line 922
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected enableMonitors()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->resume()V

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->start()V

    const/4 v0, 0x1

    .line 663
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->doEnableWaitPage(Z)V

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected getDisplayActivityType()I
    .locals 0

    .line 464
    sget p0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_MAIN:I

    return p0
.end method

.method protected gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V
    .locals 5

    .line 1041
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gotoGallery] view uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessingUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    const-string p1, "gotoGallery space in not enough, can not goto gallery."

    .line 1047
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLowStorageTip()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 1053
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 1056
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 1059
    :try_start_0
    iput-boolean p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1060
    iput-boolean p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    .line 1061
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {v1, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    .line 1065
    :cond_3
    iget p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/4 v1, 0x2

    if-eq p3, v1, :cond_6

    iget-boolean p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    if-nez p3, :cond_4

    goto :goto_0

    .line 1068
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/camera/utils/CameraUtil;->isAiGallerySupportSharedAnimation(Landroid/content/Context;)Z

    move-result p3

    .line 1069
    iget v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    if-nez v1, :cond_5

    if-eqz p3, :cond_5

    const-string p3, "thumbnail_radius"

    .line 1070
    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string p3, "testgotogallery"

    .line 1071
    invoke-static {p0, p4, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p3

    goto :goto_1

    :cond_5
    const p3, 0x7f01000f

    .line 1073
    invoke-static {p0, p3, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p3

    goto :goto_1

    .line 1066
    :cond_6
    :goto_0
    invoke-static {p0, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p3

    .line 1076
    :goto_1
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1088
    sget-object p1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[gotoGallery] SecurityException "

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1078
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 1079
    iget-object p3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p3, :cond_7

    .line 1080
    invoke-virtual {p3, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    .line 1082
    :cond_7
    sget-object p3, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "[gotoGallery] Couldn\'t view "

    invoke-static {p3, p4, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail()V

    if-eqz p2, :cond_8

    .line 1085
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showNoGalleryDialogIfNeed()Z

    :cond_8
    :goto_2
    return-void
.end method

.method protected handleReduceScreenBrightness(F)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenBrightness(Landroid/app/Activity;F)V

    :cond_0
    return-void
.end method

.method protected handleReduceScreenBrightnessGradually()V
    .locals 7

    .line 290
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float v1, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    .line 292
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    sub-float/2addr v0, v1

    .line 296
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x6

    .line 297
    iput v4, v3, Landroid/os/Message;->what:I

    .line 298
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v2, 0x64

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsBrightnessReduced:Z

    return-void
.end method

.method protected hasVisibleFragment()Z
    .locals 1

    .line 862
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 863
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 864
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected hideErrorAndFinish()V
    .locals 0

    return-void
.end method

.method protected initAppStorageManager()V
    .locals 4

    .line 515
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/BaseCameraActivity$IntentProxy;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 516
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/BaseCameraActivity$3;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V

    return-void
.end method

.method protected abstract initAppUI(Lcom/transsion/camera/app/intent/IntentParser;)V
.end method

.method protected initConfigs()V
    .locals 3

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0500b8

    .line 470
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mUseLifecycleBroadcast:Z

    const v2, 0x7f050014

    .line 471
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    const v2, 0x7f05003d

    .line 472
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGotoGalleryUseAnimation:Z

    const-string v0, "magicsky_guide_support"

    .line 473
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    const-string v0, "supernight_guide_support"

    .line 474
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    const-string v0, "video_mode_power_down_mode"

    .line 475
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    const-string v0, "create_video_surface_in_photo_mode"

    .line 476
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNeedCreateVideoSurface:Z

    return-void
.end method

.method protected initModeManager(Landroid/content/Intent;Lcom/transsion/camera/app/intent/IntentParser;Ljava/lang/String;ZLcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;)V
    .locals 10

    .line 506
    new-instance v0, Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "0"

    goto :goto_0

    .line 507
    :cond_0
    iget-object p2, p2, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :goto_0
    move-object v2, p2

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    iget-object v6, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v7, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    new-instance v9, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;

    invoke-direct {v9, p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Intent;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/ModeManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 509
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setCallingPackage(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p1, p5}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    new-instance p2, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    return-void
.end method

.method protected initMonitors()V
    .locals 3

    .line 561
    new-instance v0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 562
    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->setThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 564
    new-instance v0, Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    .line 565
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->init(Landroid/content/Context;)V

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity$BatteryStatusListener;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->start()V

    .line 569
    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListener:Lcom/transsion/camera/app/BaseCameraActivity$OrientationEventListenerImpl;

    .line 571
    new-instance v0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    return-void
.end method

.method protected initWindowAttributes()V
    .locals 0

    return-void
.end method

.method protected isSecureCamera()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected loadLatestThumbnail()V
    .locals 2

    .line 792
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadLatestThumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->loadLatestThumbnail(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected notifyNewMedia(Landroid/net/Uri;ZZ)V
    .locals 3

    .line 1329
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNewMedia, Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1333
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "image/"

    .line 1334
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1335
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1336
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    const-string p3, "video/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1337
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1168
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->setNotLoadLatestThumbnail(Z)V

    .line 1172
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, mNotLoadLatestThumbnail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    if-nez v0, :cond_1

    return-void

    .line 1179
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1180
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActivityResultCallback:Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;->onActivityResult(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->shouldExitCameraOnBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 886
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v10, p0

    .line 332
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v11

    const-string v0, "onCreateTasks"

    .line 333
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraLaunchStartTime(I)V

    .line 336
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getDisplayActivityType()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 338
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->reInitFirstForPermission()V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initConfigs()V

    .line 342
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, v10}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v13, 0x0

    .line 346
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 349
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v4, v13

    .line 354
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 356
    new-instance v14, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v14, v0, v4, v10, v2}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 358
    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v10, v14, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-string v2, "SpecifyMode"

    .line 360
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v15

    .line 362
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "BokehMode"

    .line 364
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_1

    const-string v3, "BokehOffMode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v12

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v16, v8

    :goto_2
    if-eqz v16, :cond_4

    if-eqz v15, :cond_3

    .line 367
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 369
    iput-object v2, v14, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_3

    .line 371
    :cond_2
    iput-object v15, v14, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v2, "1"

    .line 374
    iput-object v2, v14, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 378
    :cond_4
    :goto_3
    iget-object v2, v14, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v8

    goto :goto_4

    :cond_5
    move v2, v12

    :goto_4
    iput-boolean v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v2, :cond_6

    return-void

    .line 383
    :cond_6
    new-instance v2, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;

    invoke-direct {v2, v10, v13}, Lcom/transsion/camera/app/BaseCameraActivity$CameraErrorListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    iget-object v3, v14, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {v10, v2, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->initDeviceControl(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;Ljava/lang/String;)V

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build product name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100271

    invoke-virtual {v10, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", persistent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initWindowAttributes()V

    .line 390
    invoke-static/range {p0 .. p0}, Lcom/transsion/camera/utils/FeatureSupport;->needHingeStateManager(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    new-instance v1, Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-direct {v1, v10}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    .line 393
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onCreate()V

    .line 396
    :cond_7
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 397
    new-instance v1, Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const v2, 0x7f030020

    invoke-direct {v1, v10, v2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;-><init>(Landroid/content/Context;I)V

    iput-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 398
    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFeatureProvider(Lcom/transsion/camera/app/common/provider/FeatureProvider;)V

    const-string v1, "FeatureProvider init."

    .line 399
    invoke-interface {v11, v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 401
    new-instance v1, Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/sound/ActionSound;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    .line 403
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 404
    invoke-virtual {v10, v14}, Lcom/transsion/camera/app/BaseCameraActivity;->initAppUI(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 405
    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 406
    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v10, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    const-string v1, "CameraAppUI init."

    .line 407
    invoke-interface {v11, v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 409
    new-instance v7, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;

    invoke-direct {v7, v10, v13}, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    .line 410
    new-instance v6, Lcom/transsion/camera/app/ModeUIPolicy;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 411
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->getAllEntryName()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v17

    iget-object v3, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object v1, v6

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move-object v3, v0

    move-object v13, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/app/ModeUIPolicy;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Set;ZLcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    iput-object v13, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    .line 413
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/BaseCameraActivity;->initModeManager(Landroid/content/Intent;Lcom/transsion/camera/app/intent/IntentParser;Ljava/lang/String;ZLcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;)V

    .line 414
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v10, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    const-string v0, "ModeManager init."

    .line 415
    invoke-interface {v11, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initAppStorageManager()V

    .line 418
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 419
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    const-string v0, "AppStorageManager init."

    .line 420
    invoke-interface {v11, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/transsion/camera/app/PreviewIntercept;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v2, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/PreviewIntercept;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    .line 423
    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 425
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    iput-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    .line 426
    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->setKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;)V

    .line 428
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 429
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSettingManager(Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 430
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 431
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lcom/transsion/camera/app/BaseCameraActivity$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 432
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;

    invoke-direct {v1, v10, v2}, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V

    .line 433
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setModeSwitchPolicy(Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 435
    invoke-virtual {v10, v14}, Lcom/transsion/camera/app/BaseCameraActivity;->processGoogleAssistantIntent(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initMonitors()V

    .line 438
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v10, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/BaseCameraActivity;->registerBackgroundImagesObserver()V

    .line 440
    iget-object v0, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V

    .line 441
    invoke-virtual {v10, v14}, Lcom/transsion/camera/app/BaseCameraActivity;->processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 443
    invoke-static/range {p0 .. p0}, Lcom/transsion/camera/utils/FeatureSupport;->supportVIPCaptureManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "transsion.action.VIP_FINGERPRINT_KEY"

    .line 445
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "transsion.action.VIP_VOLUME_KEY"

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "transsion.action.QUIT_VIP_SELFIE_KEY"

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v1, v10, Lcom/transsion/camera/app/BaseCameraActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v10, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 455
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 459
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    .line 460
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 3

    .line 743
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit1()V

    .line 750
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->unInitDeviceControl()V

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInit2()V

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPreviewIntercept:Lcom/transsion/camera/app/PreviewIntercept;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unInit()V

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->destroyPreviewUI()V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThermalThrottle:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->destroy()V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->setBatteryListener(Lcom/transsion/camera/app/common/battery/IBatteryListener;)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBatteryMonitor:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->unInit()V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 760
    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unInit()V

    .line 762
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->unRegisterBackgroundImagesObserver()V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/sound/ActionSound;->release()V

    .line 764
    iput-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    .line 765
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->supportVIPCaptureManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVIPCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onDestroy()V

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V

    .line 772
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->quitCameraResetValue()V

    const/4 v0, 0x0

    .line 773
    invoke-static {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 774
    iget-boolean p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNeedCreateVideoSurface:Z

    if-eqz p0, :cond_3

    .line 775
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    :cond_3
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 3

    .line 784
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterAnimationComplete, mAppUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onEnterAnimationComplete()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1356
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1363
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1368
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getScreenState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mPhysicalKeyManager:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1375
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/QuickActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPauseTasks()V
    .locals 4

    .line 671
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 676
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 678
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mUseLifecycleBroadcast:Z

    if-eqz v0, :cond_2

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.action.PAUSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "transsion.permission.camera.LIFE_CYCLE"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->removePendingCommand()V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pause()V

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->pause()V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->pause(Z)V

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pausePreviewUI()V

    .line 691
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->disableMonitors()V

    const/4 v0, -0x1

    .line 692
    iput v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    .line 693
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->hidePopupOption()V

    .line 695
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    .line 696
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->pause()V

    return-void
.end method

.method protected onRestartTasks()V
    .locals 3

    .line 580
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    .line 582
    sget v0, Lcom/transsion/camera/app/ui/ScreenManager;->ACTIVITY_TYPE_AOD:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getDisplayActivityType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    .line 585
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    goto :goto_0

    .line 587
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onResumeTasks()V
    .locals 6

    .line 611
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 612
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 613
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 614
    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    .line 615
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 619
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraLaunchStartTime(I)V

    .line 620
    invoke-static {p0}, Lcom/transsion/camera/utils/MonkeyUtils;->init(Landroid/content/Context;)V

    .line 621
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mUseLifecycleBroadcast:Z

    if-eqz v0, :cond_1

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.transsion.camera.action.RESUME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "transsion.permission.camera.LIFE_CYCLE"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 625
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 626
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z

    goto :goto_0

    .line 628
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSuperNightGuideSupport:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsSkyShopGuideSupport:Z

    if-eqz v0, :cond_4

    .line 629
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_twinkle_guild"

    const-string v5, "off"

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 632
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-eqz v0, :cond_5

    .line 633
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mKeepGoingToARCoreTime:J

    .line 636
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    .line 637
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->enhanceScreenBrightness(Landroid/app/Activity;)V

    .line 638
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resume()V

    .line 640
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBGImageSavedListener:Lcom/transsion/camera/app/BaseCameraActivity$BGImageSavedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setBGImageSavedListener(Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;)V

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateScreenFromeType(I)V

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resume()V

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->resume()V

    .line 644
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onResumeTasks], mNotLoadLatestThumbnail:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , getProcessStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 645
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 646
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail()V

    .line 648
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mNotLoadLatestThumbnail:Z

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 651
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->enableMonitors()V

    .line 652
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->resume()V

    .line 653
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/app/BaseCameraActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    .line 714
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStartTasks()V
    .locals 3

    .line 593
    invoke-super {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onStart()V

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceStateCallback:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->registerDeviceStateCallback(Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;Landroid/os/Handler;)V

    :cond_0
    const/4 v0, 0x0

    .line 598
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    .line 599
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setGoingToGalleryFlag(Z)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->start()V

    .line 603
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->start()V

    .line 606
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraStartTime()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 2

    .line 719
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mHasCameraDevice:Z

    if-nez v0, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_1

    .line 723
    iget-boolean v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->stop(Z)V

    .line 724
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 727
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    if-eqz v0, :cond_2

    .line 731
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->onStop()V

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mCameraHingeStateManager:Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager;->unregisterDeviceStateCallback()V

    .line 734
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_3

    .line 735
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->stop()V

    .line 737
    :cond_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraEndTime()V

    .line 738
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCameraLaunchStartTime()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 831
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    .line 833
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 840
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mState:Lcom/transsion/camera/app/common/IApp$State;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_3

    .line 847
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->onUserInteraction()V

    .line 849
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->resetWaitPage()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected processFoldingFeatureState(I)V
    .locals 0

    return-void
.end method

.method protected processGoogleAssistantIntent(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 3

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    .line 550
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f110389

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 553
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateTasks mIsVoiceInteractionRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 554
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    if-eqz v0, :cond_1

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    const/4 v2, 0x0

    iget p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    :cond_1
    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    return-void
.end method

.method protected processWideCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .locals 0

    return-void
.end method

.method protected registerBackgroundImagesObserver()V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setChangeListener(Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;)V

    .line 799
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected final registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 933
    iget v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 934
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 935
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 936
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyScreenPocketDefaultOrientation(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 938
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected final registerThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected showErrorAndFinish(I)V
    .locals 0

    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .locals 0

    return-void
.end method

.method protected showLowStorageTip()V
    .locals 0

    return-void
.end method

.method protected showNoGalleryDialogIfNeed()Z
    .locals 4

    .line 1093
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showNoGalleryDialogIfNeed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1095
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "com.google.android.apps.photos"

    .line 1097
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "com.google.android.apps.photosgo"

    .line 1100
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v1, "com.gallery20"

    .line 1105
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isPackageNameExist(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/PermissionActivity;->showGotoGallerySetting(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected showThermalThrottleUrgent()V
    .locals 0

    return-void
.end method

.method protected showWaitPage()V
    .locals 4

    const-string v0, "action_sleep_activity_start"

    .line 243
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSleepActivitySupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    sget-object p0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "disable SleepCameraActivity by adb."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v2

    const-string v3, "isSecureCamera"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    .line 253
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    .line 254
    invoke-virtual {v2, v0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mStartActivityFromCameraFlag:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected unRegisterBackgroundImagesObserver()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 807
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->setChangeListener(Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;)V

    .line 808
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mBackgroundImagesObserver:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected final unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 956
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected final unregisterThermalThrottleChangeListener(Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    monitor-enter v0

    .line 899
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIThermalThrottleListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateThumbnailUri(Landroid/net/Uri;Z)V
    .locals 3

    .line 1344
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateThumbnailUri] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " needNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mThumbnailUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1346
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1348
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailMimeType:Ljava/lang/String;

    :goto_1
    return-void
.end method
