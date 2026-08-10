.class public Lcom/transsion/camera/app/common/mode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;
.implements Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;,
        Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;,
        Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;,
        Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;,
        Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final CAMERA_SWITCH_THRESHOLD:I

.field private final mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAuxSurfaceReady:Z

.field private mBackgroundSurfaceReady:Z

.field private mBatteryStatus:I

.field private mCameraFaceBack:Z

.field private final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mCurrentOpenedCamera:Ljava/lang/String;

.field private mCurrentRestoreState:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultCameraInCurrentFace:Ljava/lang/String;

.field private mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private mGoingToGallery:Z

.field private mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

.field private mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

.field private mInCameraSwitch:Z

.field private mInModeSwitch:Z

.field private mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

.field private mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mIsDeviceControlAvailable:Z

.field private mIsLifterSupport:Z

.field private volatile mIsPreviewSizeChanged:Z

.field private mIsResetCurrentMode:Z

.field private mIsSupportFoldUI:Z

.field private mLaunchFromAod:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mModeChangeHandler:Landroid/os/Handler;

.field private final mModeChangeLock:Ljava/lang/Object;

.field private mModeChangeThread:Landroid/os/HandlerThread;

.field private final mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mModeSupportAuxPreview:Z

.field private mModeSupportBackgroundPreview:Z

.field private mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mNeedCheckAIGroup:Z

.field private mNeedCheckOrientation:Z

.field private mNeedSaveCameraId:Z

.field private mNeedSwitchCameraID:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mOrientation:I

.field private mPendingChangeModeName:Ljava/lang/String;

.field private mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurfaceHeight:I

.field private mPreviewSurfaceObject:Ljava/lang/Object;

.field private mPreviewSurfaceReady:Z

.field private mPreviewSurfaceWidth:I

.field private mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

.field private mResumed:Z

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTemperatureStatus:I

.field private mVIPPreCameraFace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 91
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 92
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    const/4 v1, 0x2

    .line 95
    iput v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->CAMERA_SWITCH_THRESHOLD:I

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    const-string v1, "0"

    .line 97
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v3, -0x1

    .line 102
    iput v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 109
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    .line 122
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager$DispatchListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    .line 124
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 125
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 128
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    const-string v1, "end"

    .line 138
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 143
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 182
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$1;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 436
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$2;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    .line 449
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$3;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    .line 946
    new-instance v1, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    .line 2001
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 2002
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 133
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleRestoreSettings()V

    return-void
.end method

.method static synthetic access$1202(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchVideoCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 64
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/SettingManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return p0
.end method

.method static synthetic access$2902(Lcom/transsion/camera/app/common/mode/ModeManager;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleSurfaceChanged(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/common/mode/ModeManager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return p0
.end method

.method static synthetic access$3002(Lcom/transsion/camera/app/common/mode/ModeManager;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceHeight:I

    return p1
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/common/mode/ModeManager;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->handleModeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/app/common/mode/ModeManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    return p1
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method private canSwitch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1754
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1755
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The number of camera is below the threshold."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1759
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->sameFacing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private canTargetModeSupportSAT(Z)Z
    .locals 2

    .line 1750
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1, p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .locals 4

    .line 2165
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isQuickCaptureSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 2166
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "support_quick_capture"

    .line 2165
    invoke-static {v0, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2169
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v0, "quick_capture_mode"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2170
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2171
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 1627
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

.method private createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 6

    .line 1687
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 1688
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->screenPocket()Z

    move-result v1

    const-string v2, "f0.0"

    if-eqz v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_mu_monomer"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1691
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    .line 1692
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v1, :cond_1

    const-string v4, "key_vip_stereo"

    goto :goto_0

    :cond_1
    const-string v4, "key_mu_stereo"

    :goto_0
    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 1693
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 1692
    invoke-virtual {v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1695
    :goto_2
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 1696
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType(I)V

    .line 1697
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1698
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    return-object p0
.end method

.method private createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 3

    .line 1706
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMode] featureName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",modeParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatureSync(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method private doCameraSwitch(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7

    .line 1235
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsLifterSupport:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->sendCommandToLifter()V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    .line 1241
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xa5

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1244
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 1246
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "front_wide_camera"

    const-string v5, "off"

    .line 1245
    invoke-virtual {v0, v4, v5, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1247
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1250
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p3, :cond_3

    .line 1253
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result p3

    goto :goto_0

    :cond_3
    move p3, v2

    .line 1255
    :goto_0
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1258
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move-object p5, v0

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p5, :cond_6

    .line 1260
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1262
    :cond_6
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1263
    iget-boolean p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-nez p5, :cond_7

    .line 1264
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-interface {p5, p1, v0, v4, v5}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 1265
    :cond_7
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p5, v4}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1267
    :goto_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    if-eqz p4, :cond_8

    .line 1269
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1272
    :cond_8
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p3, :cond_a

    .line 1273
    :cond_9
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1276
    :cond_a
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1277
    :cond_b
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1278
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1279
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1280
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v5, :cond_c

    move-object p1, v4

    :cond_c
    invoke-interface {v3, p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1284
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 1285
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0, p5}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz p3, :cond_10

    .line 1288
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p1

    const-string v3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 1289
    invoke-static {p5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz p1, :cond_f

    if-eqz v3, :cond_f

    .line 1291
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doCameraSwitch change to vip for pmaster "

    invoke-static {p1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1292
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_vip_stereo"

    const-string v6, "f0.0"

    invoke-virtual {p1, v5, v6, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1293
    new-instance p1, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>()V

    .line 1294
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->setStereoOpen(Z)V

    .line 1295
    invoke-direct {p0, p5, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    goto :goto_3

    .line 1297
    :cond_f
    invoke-direct {p0, p5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1301
    :cond_10
    :goto_3
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-eqz p4, :cond_12

    .line 1303
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1304
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1306
    :cond_12
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1307
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1308
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1309
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;Z)V

    :cond_13
    if-eqz p1, :cond_14

    const-string p2, "_"

    .line 1314
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v4, p1, v2

    .line 1316
    :cond_14
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    if-eqz p3, :cond_15

    goto :goto_5

    .line 1320
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p1

    if-nez p1, :cond_17

    .line 1321
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p5, p1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1322
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1323
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_6

    .line 1317
    :cond_16
    :goto_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1318
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1326
    :cond_17
    :goto_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1327
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;
    .locals 13

    .line 1393
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCameraId] newMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1398
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 1399
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSaveCameraId:Z

    .line 1400
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    :goto_0
    return-object p1

    .line 1402
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-nez v1, :cond_3

    .line 1403
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1404
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "1"

    .line 1406
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1409
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const-string v2, "0"

    .line 1410
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 1411
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 1414
    :cond_4
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v10, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 1415
    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, p1

    move-object v9, v1

    .line 1414
    invoke-interface/range {v4 .. v12}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v1, p1

    .line 1419
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCameraId] default: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1331
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCameraIdByReConfig] newMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentOpenedCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nextCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1338
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1339
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :goto_0
    move v9, v4

    goto :goto_1

    .line 1343
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 1346
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v9, v1

    move-object p2, v2

    .line 1349
    :goto_1
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1351
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p2

    if-nez p2, :cond_2

    .line 1352
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, "1"

    .line 1359
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInModeSwitch:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 1360
    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v8

    move-object v1, p1

    move-object v6, p2

    .line 1359
    invoke-interface/range {v1 .. v9}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object p2, p1

    .line 1364
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCameraIdByReConfig] default: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraId: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method private getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1725
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p1

    .line 1728
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz p1, :cond_2

    .line 1729
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-nez p0, :cond_1

    .line 1730
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object p0

    .line 1731
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOtherFaceCamera,folderFrontCameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "1"

    return-object p0

    .line 1739
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 1740
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    const-string p0, "0"

    return-object p0
.end method

.method private handleModeChanged(Ljava/lang/String;)V
    .locals 5

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 823
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 828
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private handleRestoreSettings()V
    .locals 6

    .line 319
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRestoreSettings thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mModeSwitchPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mDeviceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 327
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->isSmartModeOrder()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateSmartModeNames()V

    .line 329
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_2

    .line 332
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resetBgEnable()V

    .line 335
    :cond_2
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backmodesstring"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backmainmodescount"

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frontmodesstring"

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 339
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frontmainmodescount"

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->restoreCurrentModeByFacing(I)V

    .line 343
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->nonDefaultCameraInASDMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 359
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 360
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v5

    .line 361
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->restoreParameters(Z)V

    return-void

    :cond_5
    xor-int/2addr v1, v2

    .line 365
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 366
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-nez v1, :cond_6

    .line 367
    invoke-direct {p0, v0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    :cond_6
    return-void

    .line 350
    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    goto :goto_2

    .line 355
    :cond_8
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->restoreSettingsForWideCamera(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 322
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_a

    const/16 v0, 0x14

    .line 323
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_a
    return-void
.end method

.method private handleSurfaceChanged(Ljava/lang/Object;II)V
    .locals 3

    .line 1982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_1

    .line 1983
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1984
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsPreviewSizeChanged:Z

    .line 1985
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 1986
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    .line 1987
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 1990
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    if-eqz v0, :cond_2

    .line 1991
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private initAppUI(Z)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatureResources(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method private initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .locals 9

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopPreview()V

    .line 992
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setSupportQuickCapture(Z)V

    .line 993
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    iget v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    move-object v1, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    .line 997
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-interface {v0, v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 999
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    .line 1000
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 1001
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    .line 1002
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListenerImpl:Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    .line 1003
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 1004
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1005
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 1006
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 1007
    iget p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    iget v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    invoke-interface {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 1008
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V

    return-void
.end method

.method private isCameraFacingBack(Ljava/lang/String;)Z
    .locals 0

    .line 768
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isVideoCameraSupportCurrentQuality()Z
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 748
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_quality"

    .line 747
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6_60"

    .line 749
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 752
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 753
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v1, "_"

    .line 754
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    const-string v1, "0"

    .line 756
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 757
    new-instance v1, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 758
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

.method private loadVIPSelfieDataFromDataStore()V
    .locals 4

    .line 2218
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vip_selfie_face_id"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 2219
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVIPSelfieDataFromDataStore, mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2221
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private modeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 788
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportAuxPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ICameraMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 792
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportBackgroundPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notModeSwitchCondition(Ljava/lang/String;)Z
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 713
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] currentMode is same with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 716
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez p0, :cond_1

    .line 717
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeChanged] state is not resumed ,can not change to mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private onModeChanged(Ljava/lang/String;Z)V
    .locals 8

    .line 833
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    const/16 v1, 0x35

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 834
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[onModeChanged] is in camera switch, return"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 838
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    .line 838
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 843
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 844
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_1

    .line 845
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    goto :goto_0

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 849
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 852
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_2
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "currentMode is same, mModeChangeLock notifyAll"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 855
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 856
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 859
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 862
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onModeChanged], ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeBefore()V

    .line 865
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 869
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 871
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 872
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 874
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 875
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onModeChanged] mCurrentOpenedCamera:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " newCameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 882
    :cond_3
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    if-eqz v4, :cond_4

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 886
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 890
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v0, "_"

    .line 891
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_1

    :cond_5
    move-object p1, v2

    .line 893
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 895
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 896
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 898
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->changeUIWhenSwitchModeAfter()V

    .line 899
    invoke-direct {p0, p1, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;Z)V

    .line 900
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    return-void
.end method

.method private resetSurfaceStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1996
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAuxSurfaceReady:Z

    .line 1997
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewSurfaceReady:Z

    .line 1998
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBackgroundSurfaceReady:Z

    return-void
.end method

.method private restoreSettingsForWideCamera(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 909
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v1

    .line 910
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 913
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 915
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 916
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 920
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v0

    .line 921
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 922
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 923
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_5

    const-string p1, "_"

    .line 926
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 928
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 932
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 933
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 934
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private sameFacing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1766
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private saveVIPSelfieDataToDataStore()V
    .locals 5

    .line 2209
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2212
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 2213
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "vip_selfie_face_id"

    .line 2212
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2214
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVIPSelfieDataToDataStore, mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private screenPocket()Z
    .locals 1

    .line 1702
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendCommandToLifter()V
    .locals 8

    .line 1369
    const-class p0, Ljava/lang/String;

    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendCommandToLifter+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 1371
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1372
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "lifter_service"

    aput-object v3, v1, v4

    const/4 v3, 0x0

    .line 1373
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.transsion.lifter.ITranLifterManagerService$Stub"

    .line 1374
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    .line 1375
    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 1376
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setCameraStateSync"

    new-array v5, v2, [Ljava/lang/Class;

    aput-object p0, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "com.transsion.camera"

    aput-object v2, v1, v4

    .line 1378
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1380
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1382
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "sendCommandToLifter-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchBlurCamera(Ljava/lang/String;)V
    .locals 2

    .line 1634
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1639
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1640
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1641
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1642
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1643
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const-string v0, "on"

    .line 1647
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1648
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlackWhitePortraitCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1650
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 1652
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1653
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1654
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1656
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1657
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1635
    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchBlurCamera] can not switch blur camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchDualCamBWCamera(Ljava/lang/String;)V
    .locals 2

    .line 1661
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1666
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1667
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1668
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1670
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    const-string v0, "on"

    .line 1674
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1675
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1677
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 1679
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1680
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1681
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1682
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1662
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchDualCamBWCamera] can not switch DualCamBW camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchHighDefinitionCamera(Ljava/lang/String;)V
    .locals 2

    .line 1552
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "switchHighDefinitionCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1553
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchHighDefinitionCameraImpl(Ljava/lang/String;)V

    return-void

    .line 1554
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchHighDefinitionCamera] can not switch high camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchHighDefinitionCameraImpl(Ljava/lang/String;)V
    .locals 1

    .line 1562
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[switchHighDefinitionCameraImpl]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1563
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    .line 1564
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1548
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method private switchSatCamera(Ljava/lang/String;Z)V
    .locals 2

    .line 1528
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentRestoreState:Ljava/lang/String;

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1533
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1535
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1538
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1539
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;Z)V

    .line 1540
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateWideCamera(Ljava/lang/String;)V

    .line 1541
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1542
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1543
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1544
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1529
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[switchSatCamera] can not switch sat camera mInCameraSwitch:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mResumed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchVideoCamera(Ljava/lang/String;)V
    .locals 8

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 230
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchVideoCamera]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 238
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v4

    .line 239
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 241
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 242
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v0, v2, v6, v7}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_3

    .line 245
    :cond_2
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 246
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_4

    .line 250
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "on"

    .line 254
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    .line 264
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 266
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 226
    :cond_8
    :goto_3
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchVideoCamera] can not switch video camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideAndMacro()V
    .locals 0

    .line 1424
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method private switchWideCamera(Ljava/lang/String;)V
    .locals 2

    .line 1439
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;)V

    return-void

    .line 1440
    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchWideCamera] can not switch wide camera mInCameraSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private switchWideCameraImpl(Ljava/lang/String;)V
    .locals 9

    .line 1448
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[switchWideCameraImpl]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1449
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1450
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1451
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1452
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1455
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1456
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1457
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v4

    .line 1458
    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1460
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1461
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v0, v2, v6, v7}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1463
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    .line 1464
    :cond_1
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1465
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1468
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_3

    .line 1469
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "replace"

    .line 1473
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x3e

    if-eqz v3, :cond_5

    .line 1474
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3, v7, v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1476
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1478
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v3

    .line 1481
    :goto_0
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1482
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "on"

    .line 1484
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1485
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v7}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object v3

    .line 1486
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1487
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7, v6}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_2

    .line 1490
    :cond_6
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1491
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v6, 0x3f

    invoke-interface {v3, v6}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1493
    :cond_7
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3, v6, v7, v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v3

    .line 1494
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v6, v7, v8}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v6

    .line 1495
    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    if-eqz v7, :cond_9

    if-eqz v6, :cond_8

    .line 1496
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v6, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1498
    :cond_9
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontDefaultCamera()Ljava/lang/String;

    move-result-object v3

    .line 1501
    :goto_1
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportVideoCamera()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1502
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->isVideoCameraSupportCurrentQuality()Z

    move-result v6

    const-string v7, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1503
    invoke-interface {v6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v7, "key_brightbess_value"

    .line 1504
    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/setting/SettingManager;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value_dark"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1505
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 1506
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1509
    :cond_c
    :goto_2
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v7, "key_camera_zoom"

    invoke-virtual {v6, v7}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string v7, "second_exchange"

    .line 1510
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "100"

    .line 1511
    invoke-interface {v6, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    .line 1512
    invoke-interface {v6, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    .line 1514
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1515
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1516
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz v4, :cond_e

    goto :goto_3

    .line 1519
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1520
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_4

    .line 1517
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1522
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1523
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1524
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method private unInitAppUI()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->destroyFeatureResources(Ljava/lang/Class;)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    return-void
.end method

.method private unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 985
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V

    .line 986
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->unInit()V

    return-void
.end method

.method private updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V
    .locals 0

    .line 1711
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->updateFeatureSync(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private updateWideCamera(Ljava/lang/String;)V
    .locals 5

    .line 1569
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    .line 1570
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 1571
    sget-object v2, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWideCamera,currentCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",targetCamera:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1572
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1573
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "wide_camera"

    if-eqz v2, :cond_0

    .line 1574
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1575
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "on"

    .line 1577
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 1580
    :cond_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1582
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "off"

    .line 1584
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateZoom(Ljava/lang/String;Z)V
    .locals 3

    .line 1603
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "100"

    .line 1608
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void

    .line 1611
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    .line 1612
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1613
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->convertZoom(Ljava/lang/String;)I

    move-result v1

    .line 1614
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, p2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result p2

    .line 1616
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1617
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1619
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoom(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1621
    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateZoomValue(Z)V
    .locals 1

    .line 1591
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "100"

    .line 1596
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    .line 1597
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public currentModeName()Ljava/lang/String;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 559
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModePreviewSize()Landroid/util/Size;
    .locals 5

    .line 1960
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, mCurrentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1962
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_0

    .line 1963
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 1964
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    .line 1965
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedPreviewSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModePreviewSize, supportedPreviewSizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1968
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/provider/FeatureProvider;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 375
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 376
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 377
    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 378
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 379
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 380
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 381
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 382
    iput-object p8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 383
    iput-object p9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 385
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$CameraFirstFrameCallback;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 386
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p5, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 387
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/common/mode/ModeManager$MainHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    .line 389
    new-instance p3, Landroid/os/HandlerThread;

    const-string p5, "CameraModeChangeThread"

    invoke-direct {p3, p5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 390
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance p3, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p3, p0, p5}, Lcom/transsion/camera/app/common/mode/ModeManager$ModeChangeHandler;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    .line 393
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p3, p5}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 394
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 398
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 399
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p6}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p6

    iget-object p7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object p8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-interface {p8, p9}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p5, p3, p6, p7, p8}, Lcom/transsion/camera/app/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V

    .line 400
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDispatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    invoke-virtual {p3, p5}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    .line 401
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 403
    new-instance p3, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    invoke-direct {p3}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    .line 404
    new-instance p5, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;

    invoke-direct {p5, p0, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$MyQCResultListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager$1;)V

    invoke-virtual {p3, p5}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->setQuickCaptureResultListener(Lcom/transsion/camera/app/common/provider/QuickCaptureManager$QuickCaptureResultListener;)V

    const/4 p3, 0x0

    .line 406
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->initAppUI(Z)V

    .line 407
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p4, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 408
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 409
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "key_restore_settings_notify_ui"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 411
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "key_wide_camera_item_seleccted"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 413
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "key_ai_group_photo_camera_id"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 415
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "key_video_camera_change"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 417
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "key_google_lens_click"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 419
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "action_barcode_activity_start"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 421
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "action_gallery_activity_start"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 423
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "action_movie_review_activity_start"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 425
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p5, "action_sleep_activity_start"

    invoke-virtual {p2, p5, p4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 428
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLifterSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsLifterSupport:Z

    .line 430
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->loadVIPSelfieDataFromDataStore()V

    :cond_2
    return-void
.end method

.method public modeSupportPowerSavingMode()Z
    .locals 0

    .line 2161
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportPowerSavingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 2154
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 2155
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 1780
    iput p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mBatteryStatus:I

    .line 1781
    iput p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mTemperatureStatus:I

    .line 1782
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    .line 1783
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onBatteryStatusChanged(ZII)V

    .line 1785
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    if-eqz p0, :cond_1

    .line 1786
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method

.method public onBgCaptureDone()V
    .locals 2

    .line 1975
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBgCaptureDone"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1976
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_0

    .line 1977
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraSilently()V

    :cond_0
    return-void
.end method

.method public onCameraReConnect(I)Z
    .locals 12

    .line 1120
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1121
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onCameraReConnect] state is pause return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    .line 1125
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onConfigurationChanged(Z)V

    .line 1127
    :cond_2
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCameraReConnect] start, displayMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mResumed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVIPPreCameraFace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1128
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1129
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->resetDrawState()V

    .line 1134
    :cond_3
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    const-string v5, "off"

    const-string v6, "wide_camera"

    const/4 v7, -0x1

    const-string v8, "0"

    if-eqz v3, :cond_b

    if-eq p1, v2, :cond_4

    if-ne p1, v7, :cond_b

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 1135
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 1136
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 1137
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1138
    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1139
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1141
    :cond_5
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1142
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, v8

    .line 1147
    :goto_1
    iput-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1148
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    invoke-static {v7}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1149
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move v7, v1

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v2

    :goto_3
    if-ne p1, v2, :cond_9

    move v7, v2

    .line 1156
    :cond_9
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomValue(Z)V

    .line 1157
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1159
    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    :cond_a
    const-string p1, "[onCameraReConnect] not needBuildBlurCoverView"

    .line 1162
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1163
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUI;->needBuildBlurCoverView(Z)V

    move p1, v2

    move v11, v7

    move-object v7, v3

    move v3, v11

    goto/16 :goto_8

    .line 1166
    :cond_b
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 1170
    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1171
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    iput-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    goto :goto_5

    .line 1173
    :cond_c
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1174
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->canTargetModeSupportSAT(Z)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_4

    :cond_d
    move-object v3, v8

    .line 1179
    :goto_4
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    .line 1180
    iput-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1182
    :goto_5
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoomValue(Z)V

    .line 1183
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v8, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 1185
    invoke-interface {v6, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChangedOnly(Ljava/lang/String;)V

    :cond_e
    if-ne p1, v7, :cond_f

    const-string p1, "[onCameraReConnect] quit vipselfie not needBuildBlurCoverView"

    .line 1188
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1189
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUI;->needBuildBlurCoverView(Z)V

    :cond_f
    move p1, v2

    goto :goto_6

    .line 1192
    :cond_10
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    move p1, v1

    .line 1195
    :goto_6
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v5, :cond_12

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1198
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v3

    if-nez v3, :cond_11

    .line 1199
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFoldedFrontCameraId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    const-string v3, "1"

    .line 1205
    :cond_12
    :goto_7
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v5, :cond_13

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v5

    :cond_13
    move-object v7, v3

    move v3, v2

    .line 1209
    :goto_8
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateScreenFormType(I)V

    .line 1210
    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v5, :cond_14

    move v9, v1

    move v10, v9

    goto :goto_9

    :cond_14
    move v10, p1

    move v9, v3

    .line 1214
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCameraReConnect] mDefaultCameraInCurrentFace:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nextCameraId:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isVIPSelfie:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reConnect:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1217
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz p1, :cond_15

    move v8, v1

    goto :goto_a

    :cond_15
    move v8, v2

    :goto_a
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/app/common/mode/ModeManager;->doCameraSwitch(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string p0, "[onCameraReConnect] end."

    .line 1219
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public onCameraStateChanged(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportAuxPreview(Z)V

    .line 726
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportAuxPreview:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    .line 727
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setModeSupportBackgroundPreview(Z)V

    .line 728
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSupportBackgroundPreview:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewModeSupport(Z)V

    const/4 p1, 0x0

    .line 729
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    :cond_0
    return-void
.end method

.method public onCameraSwitch(Z)V
    .locals 10

    .line 1013
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v0, :cond_0

    .line 1014
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onCameraSwitch] is in camera switch"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1017
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_1

    .line 1018
    sget-object p1, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCameraSwitch] state mResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1021
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onCameraSwitch]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "onCameraSwitch"

    .line 1022
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 1025
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1028
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1029
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getOtherFaceCamera(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->canSwitch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1031
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 1033
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_camera_damaged"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1032
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1034
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1038
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    .line 1040
    :cond_3
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsLifterSupport:Z

    if-eqz v3, :cond_4

    const-string v3, "1"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1041
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->sendCommandToLifter()V

    :cond_4
    const-string v3, "[onCameraSwitch] start."

    .line 1043
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1044
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1046
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 1047
    invoke-interface {v3, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1050
    :cond_5
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1051
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 1052
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "front_wide_camera"

    const-string v7, "off"

    .line 1051
    invoke-virtual {v3, v6, v7, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1053
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 1055
    :cond_6
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1056
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1057
    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needRebuildMode()Z

    move-result v6

    .line 1058
    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1061
    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    const/4 v8, 0x0

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    move-object v7, v3

    goto :goto_1

    .line 1062
    :cond_8
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    .line 1063
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1064
    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-nez v7, :cond_9

    .line 1065
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v7, v1, v3, v9, v8}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1066
    :cond_9
    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v7, v9}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1068
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1069
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    .line 1071
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v6, :cond_b

    .line 1072
    :cond_a
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1075
    :cond_b
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1076
    :cond_c
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v8}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1077
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v5, v9, v4}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 1078
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 1079
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setModeName(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setModeName(Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3, v7}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v6, :cond_f

    .line 1087
    :cond_e
    invoke-direct {p0, v7}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1090
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->onCameraClosedBefore()V

    .line 1091
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1093
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1094
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->notifySwitchByUser(Z)V

    .line 1095
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1096
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateZoom(Ljava/lang/String;Z)V

    .line 1098
    :cond_10
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v6, :cond_11

    goto :goto_2

    .line 1106
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result p1

    if-nez p1, :cond_14

    .line 1107
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1109
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    :goto_2
    if-eqz p1, :cond_13

    const-string v1, "_"

    .line 1101
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v8, p1, v4

    .line 1103
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v8}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1104
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1112
    :cond_14
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1114
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    const-string p0, "[onCameraSwitch] end."

    .line 1115
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExchangeWideAndMacro()V
    .locals 2

    .line 1954
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onExchangeWideAndMacro] "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1955
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideAndMacro()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1771
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 1772
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mOrientation:I

    .line 1773
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_1

    .line 1774
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onOrientationChanged(I)V

    :cond_1
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSingleTapUp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSwitchBlurCamera(Ljava/lang/String;)V
    .locals 3

    .line 1926
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchBlurCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1927
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchBlurCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchDualCamBWCameraListener(Ljava/lang/String;)V
    .locals 3

    .line 1932
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchDualCamBWCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1933
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchDualCamBWCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchHighDefinitionCamera(Ljava/lang/String;)V
    .locals 3

    .line 1948
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchHighDefinitionCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1949
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchHighDefinitionCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchLogicalCamera(Ljava/lang/String;)V
    .locals 3

    .line 1833
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchLogicalCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1834
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1839
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1840
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1841
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1844
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    const-string v0, "on"

    .line 1847
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1848
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1850
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    .line 1852
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1853
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1854
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1855
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1835
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchTeleCamera] can not switch tele camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 4

    .line 797
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode, modeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 798
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    .line 799
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v1, :cond_0

    const-string p0, "onSwitchMode mIsResetCurrentMode, do not show preview cover"

    .line 800
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->notModeSwitchCondition(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeChangeFlag(Z)V

    .line 806
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 809
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_4

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchMode, process switchAnimate, modeName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 811
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x93

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x34

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 818
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwitchOpticalZoomCamera()V
    .locals 3

    .line 1798
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1803
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1804
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1805
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1807
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1808
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    .line 1809
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetSurfaceStatus()V

    .line 1810
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    .line 1811
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const-string v2, "key_camera_zoom"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    const-string v2, "100"

    .line 1812
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    .line 1813
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    .line 1825
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1826
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1828
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1799
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchOpticalZoomCamera] can not switch teleZoom camera mInCameraSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchPeriscopeCamera(Ljava/lang/String;)V
    .locals 3

    .line 1860
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchPeriscopeCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1861
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1866
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    .line 1867
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1868
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 1869
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1870
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    const-string v0, "on"

    .line 1871
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1872
    new-instance v0, Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/provider/FeatureParameters;-><init>(Z)V

    .line 1873
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p1, :cond_1

    .line 1876
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1878
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object p1

    .line 1880
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1881
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v0, "_"

    .line 1884
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    .line 1886
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 1887
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 1888
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 1889
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void

    .line 1862
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[switchPeriscopeCamera] can not switch periscope camera mInCameraSwitch:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mResumed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;)V
    .locals 0

    .line 1938
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSatCameraListener(Ljava/lang/String;Z)V
    .locals 0

    .line 1943
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchSatCamera(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSwitchWideCamera(Ljava/lang/String;)V
    .locals 3

    .line 1792
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSwitchWideCamera] value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1793
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCamera(Ljava/lang/String;)V

    return-void
.end method

.method public pause(Z)V
    .locals 3

    .line 572
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needAsyncClose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 574
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x32

    .line 577
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 580
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->pause()V

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->pause()V

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->pause()V

    if-eqz p1, :cond_2

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_0

    .line 587
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    :goto_0
    return-void
.end method

.method public resetCurrentMode(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    return-void
.end method

.method public resume()V
    .locals 6

    .line 610
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resume] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsResetCurrentMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVIPPreCameraFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 612
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mResumed:Z

    .line 613
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    const/4 v2, 0x0

    .line 614
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 616
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 617
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportDualVideo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 618
    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraSwitch(Z)V

    .line 621
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    .line 622
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 623
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    if-eqz v3, :cond_2

    .line 624
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "mIsResetCurrentMode true, mModeChangeLock notifyAll"

    .line 627
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeSwitchPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 631
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsResetCurrentMode:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 629
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 633
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPendingChangeModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onModeChanged(Ljava/lang/String;Z)V

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resume()V

    .line 638
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 639
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 640
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 641
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 642
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->needUnintModeWhenPause()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 643
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 644
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 645
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/app/common/mode/ModeManager;->initMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)V

    .line 646
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/transsion/camera/app/common/IAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 647
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 651
    :cond_4
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsSupportFoldUI:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mVIPPreCameraFace:Ljava/lang/String;

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 654
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraIdByReConfig(Lcom/transsion/camera/app/common/mode/ICameraMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->getCameraId(Lcom/transsion/camera/app/common/mode/ICameraMode;)Ljava/lang/String;

    move-result-object v1

    .line 655
    :goto_2
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v1, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 657
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentOpenedCamera:Ljava/lang/String;

    .line 658
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/mode/ICameraMode;->resume()V

    .line 659
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_7

    const-string v5, "_"

    .line 662
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_3

    :cond_7
    move-object v1, v4

    .line 664
    :goto_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, v4, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_8
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckAIGroup:Z

    .line 671
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedCheckOrientation:Z

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->resume()V

    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 980
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setCallingPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGoingToGalleryFlag(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    .line 565
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGoingToGallery:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "action_gallery_activity_start"

    .line 566
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 567
    invoke-virtual {p1, p0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    return-void
.end method

.method public setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 707
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    :cond_0
    return-void
.end method

.method public setLaunchFromAod(Z)V
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mLaunchFromAod:Z

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    .line 940
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 941
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_0
    return-void
.end method

.method public setNextCameraId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNeedSwitchCameraID:Z

    .line 685
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCameraAsync()V

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->closeCamera()V

    :cond_2
    :goto_0
    return-void
.end method

.method public switchWideCameraForSpecifyMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 1429
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDefaultCameraInCurrentFace:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1430
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCameraFaceBack:Z

    .line 1431
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mInCameraSwitch:Z

    if-eqz v0, :cond_0

    .line 1432
    sget-object p0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[openWideCamera] in camera switching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1435
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraImpl(Ljava/lang/String;)V

    return-void
.end method

.method public unInit1()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_ai_group_photo_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_camera_change"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_google_lens_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "action_barcode_activity_start"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "action_gallery_activity_start"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "action_movie_review_activity_start"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "action_sleep_activity_start"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 533
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->saveVIPSelfieDataToDataStore()V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mQuickCaptureManager:Lcom/transsion/camera/app/common/provider/QuickCaptureManager;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/QuickCaptureManager;->uninit()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 538
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->unInitAppUI()V

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mPreviewFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    return-void
.end method

.method public unInit2()V
    .locals 1

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mIsDeviceControlAvailable:Z

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeThread:Landroid/os/HandlerThread;

    .line 552
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mModeChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 3

    .line 697
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 698
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 699
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz p0, :cond_0

    .line 700
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    :cond_0
    return-void
.end method
