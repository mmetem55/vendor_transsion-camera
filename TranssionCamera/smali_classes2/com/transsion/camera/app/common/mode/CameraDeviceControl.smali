.class public Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;,
        Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mArrayId:[Ljava/lang/String;

.field private volatile mAuxPreviewSize:Landroid/util/Size;

.field private volatile mBackgroundPreviewSize:Landroid/util/Size;

.field private mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

.field private mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

.field private final mCameraOpenStrategyInMonkey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangeParameterLock:Ljava/lang/Object;

.field private final mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private volatile mClosing:Z

.field private mContext:Landroid/content/Context;

.field private mCurMainDevice:Ljava/lang/String;

.field private mCurSetParameterDevice:Ljava/lang/String;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mDeviceState:I

.field private mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private final mFeatureProviderLock:Ljava/lang/Object;

.field private mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private final mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSettingReady:Z

.field private mLastSetParameterDevice:Ljava/lang/String;

.field private mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

.field private mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

.field private mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

.field private mMainPreviewStopped:Z

.field private mModeChanged:Z

.field private mNeedOpenSlave:Z

.field private mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private final mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private volatile mPreviewSize:Landroid/util/Size;

.field private mReleased:Z

.field private mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

.field private mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

.field private mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

.field private mSlavePreviewStopped:Z

.field private final mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private final mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

.field private mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalDeviceCount:I


# direct methods
.method public static synthetic $r8$lambda$c_2x6ECx0adcVQVHSq0cbq-23Hw(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 53
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 54
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 55
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    .line 56
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    const/4 v3, 0x1

    .line 60
    iput v3, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 62
    iput v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 63
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 64
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 66
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    const-string v4, "device_main"

    .line 67
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 68
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 69
    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 70
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 71
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 75
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 76
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProviderLock:Ljava/lang/Object;

    .line 77
    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 79
    iput-boolean v2, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 82
    iput-boolean v3, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 85
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "opened"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 93
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "closed"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 94
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startcreatsession"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 95
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewing"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 96
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "startpreviewed"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 97
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    const-string v2, "firstframe"

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    .line 98
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    const/16 v1, 0x384

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v13, v17

    move-object/from16 v15, v17

    invoke-static/range {v4 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOpenStrategyInMonkey:Ljava/util/Map;

    .line 1538
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    .line 1566
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    .line 1761
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v1, v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchParameters(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopRepeating()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePicture()V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCancelTakePicture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartContinuousShot(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopContinuousShot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopContinuousShotCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleConfigCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameterSelf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleOpenCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopRecording()V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUnInit()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSnapShotForVideoHDR()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRestoreParameters(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleEnableVideoAutoFlash(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateAuxSurfaceStatus(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleAuxSurfaceModeSupported(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStopFaceDetection()V

    return-void
.end method

.method static synthetic access$3700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleBackgroundSurfaceModeSupported(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/provider/FeatureProvider;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProviderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleCloseCamera()V

    return-void
.end method

.method static synthetic access$5000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/setting/SettingManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraError(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleStartPreview()V

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1037
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "0"

    .line 1041
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "1"

    .line 1042
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 1763
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 1764
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 2

    .line 1849
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_flash"

    if-nez v0, :cond_0

    return-object v1

    .line 1853
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p0

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private handleAuxPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1438
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1439
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1440
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1441
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1440
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private handleAuxSurfaceModeSupported(Z)V
    .locals 0

    .line 1428
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1429
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceModeSupported(Z)V

    :cond_0
    return-void
.end method

.method private handleBackgroundPreviewSurface(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1463
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1464
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 1466
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1465
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private handleBackgroundSurfaceModeSupported(Z)V
    .locals 0

    .line 1453
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1454
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceModeSupported(Z)V

    :cond_0
    return-void
.end method

.method private handleCancelTakePicture()V
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->cancelTakePicture()V

    :cond_0
    return-void
.end method

.method private handleChangeParameter(Ljava/lang/String;)V
    .locals 4

    .line 1327
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeParameter key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurSetParameterDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5

    .line 1330
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v2, "device_slave"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5

    .line 1334
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v3, "device_both"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1338
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1339
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2

    .line 1340
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1342
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5

    .line 1343
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterSelf(Ljava/lang/String;)V

    goto :goto_0

    .line 1345
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1346
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_4

    .line 1347
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameter(Ljava/lang/String;)V

    .line 1349
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_5

    .line 1350
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterSelf(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleChangeParameterSelf(Ljava/lang/String;)V
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1382
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterSelf(Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1386
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->changeParameterSelf(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCloseCamera()V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "It is underBgCapturing, need to removeBgCaptureThumb by close camera!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->removeBgCaptureThumb()V

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    .line 1110
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 1112
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->reset()V

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_3

    .line 1121
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1123
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1124
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    .line 1125
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1127
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateStreamIds([I)V

    .line 1128
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    const-string v0, "device_main"

    .line 1129
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    .line 1130
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1131
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseCamera mTotalDeviceCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1132
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 1133
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1135
    :cond_5
    iput v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleConfigCommand(Ljava/lang/String;)V
    .locals 3

    .line 1357
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigCommand key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurSetParameterDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_face_detection"

    .line 1358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    .line 1362
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1363
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_4

    .line 1369
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1371
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_slave"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1372
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_4

    .line 1373
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configCommand(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleEnableVideoAutoFlash(Z)V
    .locals 0

    .line 1416
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1417
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enableVideoAutoFlash(Z)V

    :cond_0
    return-void
.end method

.method private handleOpenCamera(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_"

    .line 1068
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1070
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOpenCamera cameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1074
    :cond_1
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    .line 1075
    array-length p1, v0

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    .line 1076
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1077
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1078
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartCreatSessionState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1079
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewingState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1080
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStartPreviewedState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameState:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    .line 1082
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1083
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOpenCamera openCamera cameraId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", TotalDeviceCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->openCamera(Ljava/lang/String;)V

    .line 1087
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    .line 1088
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1089
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setOpenDoubleDevice(Z)V

    .line 1090
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_4

    .line 1091
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent;->setOpenDoubleDevice(Z)V

    .line 1092
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setOpenDoubleDevice(Z)V

    .line 1093
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-nez p1, :cond_3

    .line 1094
    new-instance p1, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1095
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 1096
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    .line 1098
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setOpenDoubleDevice(Z)V

    .line 1099
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNeedOpenSlave:Z

    :cond_4
    return-void
.end method

.method private handleRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1527
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1528
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method private handleRestoreParameters(Z)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->restoreParameters(Z)V

    .line 1513
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_1

    .line 1514
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->releaseCamera()V

    .line 1515
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->closeCamera()V

    :cond_1
    const/4 p1, 0x1

    .line 1517
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    return-void
.end method

.method private handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1177
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetSessionDisplay device type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", object type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1180
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1182
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_3

    .line 1183
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_2

    .line 1184
    iget v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v5, v4, :cond_2

    .line 1185
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1186
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1187
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_1

    .line 1189
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 1190
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1189
    invoke-virtual {v3, v1, v5, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    goto :goto_2

    .line 1194
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getDeviceType()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 1195
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    .line 1196
    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v3, v4, :cond_4

    .line 1197
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    .line 1198
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    .line 1199
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    goto :goto_1

    .line 1201
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v3

    .line 1202
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result p1

    .line 1201
    invoke-virtual {v1, v3, v5, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    :cond_5
    :goto_1
    move p1, v2

    :goto_2
    if-eqz v0, :cond_7

    .line 1207
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    if-ne v0, v4, :cond_7

    .line 1208
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1209
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v3

    .line 1208
    invoke-virtual {p1, v0, v1, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result p1

    .line 1210
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    .line 1212
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveControlInfo:Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v4

    .line 1211
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSurface(Ljava/lang/Object;II)Z

    .line 1214
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainPreviewStopped:Z

    .line 1215
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlavePreviewStopped:Z

    :cond_7
    if-eqz p1, :cond_9

    .line 1219
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->onModeSettingReady()V

    goto :goto_3

    .line 1221
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1222
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObject()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getVideoFrameRate()I

    move-result v4

    .line 1223
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getObjectHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->getPrepareSuccess()Z

    move-result v7

    .line 1222
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private handleShutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1486
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    goto :goto_0

    .line 1489
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1490
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleShutterSoundPlay(Ljava/lang/String;)V
    .locals 2

    .line 1472
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1474
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    goto :goto_0

    .line 1477
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_1

    .line 1478
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 1404
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    :cond_0
    return-void
.end method

.method private handleSnapShotForVideoHDR()V
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->snapShotForVideoHDR()V

    :cond_0
    return-void
.end method

.method private handleStartContinuousShot(I)V
    .locals 0

    .line 1310
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1311
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startContinuousShot(I)V

    :cond_0
    return-void
.end method

.method private handleStartPreview()V
    .locals 0

    .line 1148
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startPreview()V

    :cond_0
    return-void
.end method

.method private handleStartRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 1392
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1393
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    :cond_0
    return-void
.end method

.method private handleStopContinuousShot()V
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShot()V

    :cond_0
    return-void
.end method

.method private handleStopContinuousShotCount()V
    .locals 0

    .line 1321
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopContinuousShotCount()V

    :cond_0
    return-void
.end method

.method private handleStopFaceDetection()V
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    :cond_0
    return-void
.end method

.method private handleStopPreview()V
    .locals 0

    .line 1154
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopPreview()V

    :cond_0
    return-void
.end method

.method private handleStopRecording()V
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRecording()V

    :cond_0
    return-void
.end method

.method private handleStopRepeating()V
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->stopRepeating()V

    :cond_0
    return-void
.end method

.method private handleSwitchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 2

    const/4 v0, 0x1

    .line 1228
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    .line 1229
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1231
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSwitchMode mDeviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1232
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 1234
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1235
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1236
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->switchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1238
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_1
    return-void
.end method

.method private handleSwitchParameters(Ljava/lang/String;)V
    .locals 3

    .line 1502
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSwitchParameters deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "device_both"

    .line 1503
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mLastSetParameterDevice:Ljava/lang/String;

    .line 1506
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    return-void
.end method

.method private handleTakePicture()V
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePicture()V

    :cond_0
    return-void
.end method

.method private handleTakePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 1521
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1522
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method private handleUnInit()V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1142
    :cond_0
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 1143
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1144
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    return-void
.end method

.method private handleUnRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 1533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1534
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method private handleUpdateAuxSurfaceStatus(Z)V
    .locals 0

    .line 1422
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1423
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateAuxSurfaceStatus(Z)V

    :cond_0
    return-void
.end method

.method private handleUpdateBackgroundSurfaceStatus(Z)V
    .locals 0

    .line 1447
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1448
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateBackgroundSurfaceStatus(Z)V

    :cond_0
    return-void
.end method

.method private handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 5

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 1250
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1251
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "handleUpdateSessionSize mMainDevice.isClosed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1255
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_2

    .line 1256
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1257
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    .line 1260
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1261
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePictureSurface()V

    .line 1262
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePostViewSurface()V

    :cond_3
    const/4 p1, 0x0

    .line 1266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_4

    .line 1267
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p1

    .line 1269
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 1270
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    .line 1271
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v1

    .line 1272
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 1273
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/CameraUtil;->getMinSizeForSupport(Landroid/util/Size;Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 1274
    sget-object v2, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleUpdateSessionSize] previewSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",old mPreviewSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mAuxPreviewSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", backgroundSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    .line 1276
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1277
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v2, :cond_5

    .line 1278
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v1, v3, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1280
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1281
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v1, v3, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 1283
    :cond_6
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setPreviewSize(II)V

    .line 1284
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    if-eqz v2, :cond_7

    .line 1285
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->setAuxPreviewSize(II)V

    :cond_7
    if-eqz p1, :cond_8

    .line 1289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/IAppUI;->setBackgroundPreviewSize(II)V

    .line 1292
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 1293
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 1294
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    return-void

    .line 1245
    :cond_9
    :goto_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateSessionSize invalid CameraMode | mCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cameraMode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private handlerPostRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 0

    .line 1496
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 1497
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method private isNotifyComplete(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;Ljava/lang/String;)Z
    .locals 3

    .line 1781
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->enter()V

    .line 1789
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    if-ge v0, v1, :cond_2

    .line 1790
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not complete, cur id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", cur device count:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", total:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mTotalDeviceCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1790
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1795
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->reset()V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyCameraError(I)V
    .locals 0

    .line 1775
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    if-eqz p0, :cond_0

    .line 1776
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;->onCameraError(I)V

    :cond_0
    return-void
.end method

.method private notifyCameraState(I)V
    .locals 1

    .line 1768
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceState:I

    .line 1769
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;

    .line 1770
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;->onCameraStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized onModeSettingReady()V
    .locals 1

    monitor-enter p0

    .line 1801
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1802
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z

    .line 1803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->onModeSettingReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openCameraWithStrategy(Ljava/lang/String;)V
    .locals 4

    .line 1861
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 1865
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1867
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    .line 1868
    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1870
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraOpenStrategyInMonkey:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 1872
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1873
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In monkey scene,the available memory value is not in strategy map.Current available memory is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1877
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1879
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "In monkey scene,open camera with strategy according to available memory,open camera delay "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processAnalyticsCameraId(Ljava/lang/String;)V
    .locals 1

    .line 1816
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraId(Ljava/lang/String;)V

    .line 1817
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getCameraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraNameValue(Ljava/lang/String;)V

    .line 1818
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1820
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setFacing(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized resetModeSettingReady()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1809
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mIsModeSettingReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1810
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startWithMode(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 7

    .line 1716
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWithMode, oldMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWithMode, main parameters device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    .line 1722
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurSetParameterDevice:Ljava/lang/String;

    const-string v1, "device_main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mArrayId:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 1737
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const-string v0, "device_slave"

    .line 1738
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 1739
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_3

    .line 1740
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 1743
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1744
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    goto :goto_1

    .line 1727
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-virtual {v0, v5, v6}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    .line 1728
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurMainDevice:Ljava/lang/String;

    .line 1729
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_5

    .line 1730
    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 1733
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1734
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V

    .line 1748
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_7

    .line 1749
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 1752
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;->onSettingReady()V

    .line 1753
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->resetModeSettingReady()V

    const/4 v0, 0x4

    .line 1754
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->notifyCameraState(I)V

    .line 1755
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_8

    .line 1756
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->creatOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_8
    return-void
.end method

.method private switchMode()Z
    .locals 7

    .line 1051
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1053
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1054
    :goto_1
    sget-object v4, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchMode] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1056
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mNextMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 1057
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mModeChanged:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private waitDone()V
    .locals 3

    .line 1826
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1827
    new-instance v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V

    .line 1836
    monitor-enter v0

    .line 1837
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1f4

    .line 1840
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1842
    :catch_0
    :try_start_2
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1845
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public cancelTakePicture()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 407
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 408
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_0
    return-void
.end method

.method public checkDisplayChanged(ILjava/lang/Object;II)Z
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->checkSurfaceChanged(ILjava/lang/Object;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public closeCamera()V
    .locals 2

    .line 243
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V

    :cond_0
    return-void
.end method

.method public closeCameraAsync()V
    .locals 3

    .line 252
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraAsync"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "closeCameraAsync delay 8s because of BgCapturing"

    .line 255
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeCameraSilently()V
    .locals 2

    .line 265
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraSilently"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 267
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 3

    .line 319
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPictureSizeUpdate, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request_Camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleUpdateSessionSize(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .locals 1

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x19

    .line 481
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .locals 0

    if-nez p1, :cond_0

    .line 610
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 613
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0
.end method

.method public getOrientation(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 625
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getOrientation(ILjava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 630
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 633
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 634
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 635
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-nez p2, :cond_4

    .line 637
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->isVipMode()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    move p2, v0

    :cond_4
    if-eqz p3, :cond_5

    xor-int/lit8 p2, p2, 0x1

    .line 643
    :cond_5
    invoke-static {p1, v1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 3

    .line 331
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize, mPreviewSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 0

    if-nez p1, :cond_0

    .line 618
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getAvailableFocalLengths] cameraId == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 621
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method

.method public getSettingManager()Lcom/transsion/camera/app/common/setting/SettingManager;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-object p0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 603
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 594
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighSpeedSizesAndFPS()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVideoHintOrientation(ILjava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 648
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[getVideoHintOrientation] mCurrentCameraId == null, so return 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 651
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    .line 652
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v1

    .line 653
    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move v0, v2

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->needFlipForVideoMirror()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 664
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0

    :cond_2
    if-eqz p3, :cond_3

    xor-int/lit8 v0, v0, 0x1

    .line 671
    :cond_3
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getRotation(IIZ)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 1

    .line 106
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    .line 108
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/setting/SettingManager;->init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    .line 109
    new-instance p2, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$CameraDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance p2, Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 111
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mDeviceStateCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainControlInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V

    return-void
.end method

.method public isHighSpeedVideoSupport()Z
    .locals 2

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 584
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighSpeedVideoSupport()Z

    move-result v0

    :cond_0
    return v0

    .line 586
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isHighSpeedVideoSupport cameraCapabilities is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isSuperDefinitionSupport()Z
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 709
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 699
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVssSupported()Z
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->isVssSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 678
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->needFlipForVideoMirror()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "_"

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    array-length v1, v0

    const-string v2, "openCamera cameraId:"

    if-nez v1, :cond_1

    .line 214
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_1
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TranMemoryFlow] available memory when openCamera :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 221
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 222
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "openCamera has no camera, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 228
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->openCameraWithStrategy(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 231
    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 236
    :cond_5
    :goto_1
    array-length p1, v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    array-length p1, v0

    if-ne p1, v3, :cond_7

    .line 237
    :cond_6
    aget-object p1, v0, v2

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->processAnalyticsCameraId(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public pause()V
    .locals 3

    .line 140
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when pause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->pause()V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resetCameraOutputSurface()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 151
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 1

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x1a

    .line 487
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public registerStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePendingCommand()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    const-string v2, "key_face_detection"

    .line 566
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const-string v0, "key_focus"

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 356
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 3

    .line 337
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValue, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    .line 339
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 3

    .line 363
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValueJustSelf, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 365
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 366
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .locals 3

    .line 347
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestChangeSettingValueSync, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mChangeParameterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleChangeParameter(Ljava/lang/String;)V

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restoreParameters(Z)V
    .locals 3

    .line 538
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreParameters thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x15

    .line 540
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 116
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when resume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isBgCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Activity resume should remove msg_close_camera!"

    .line 118
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->removeBgCaptureThumb()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enterCloseState()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->enterCloseState()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSlaveDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->resume()V

    :cond_3
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraDisconnectedListerner(Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraDisconnectedListerner:Lcom/transsion/camera/app/common/IApp$ICameraDisconnectedListener;

    return-void
.end method

.method public setCameraErrorListener(Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mCameraErrorListener:Lcom/transsion/camera/app/common/IApp$ICameraErrorListener;

    return-void
.end method

.method public setFeatureProvider(Lcom/transsion/camera/app/common/provider/FeatureProvider;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProviderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    .line 169
    sget-object p1, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setFeatureProvider notify"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFeatureProviderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFirstFrameCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mFirstFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-void
.end method

.method public setMainPreviewDisplay(Ljava/lang/Object;II)V
    .locals 8

    .line 281
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainPreviewDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    .line 283
    new-instance v7, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {p0, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V
    .locals 7

    .line 298
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaRecordDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrameRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    .line 301
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setVideoFrameRate(I)V

    .line 302
    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;->setPrepareSuccess(Z)V

    .line 303
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->handleSetSessionDisplay(Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModeSupportAuxPreview(Z)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    .line 499
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setModeSupportBackgroundPreview(Z)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x24

    .line 519
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_0
    return-void
.end method

.method public setSlavePreviewDisplay(Ljava/lang/Object;II)V
    .locals 8

    .line 289
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlavePreviewDisplay, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    .line 291
    new-instance v7, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {p0, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 2

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x16

    .line 457
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startContinuousShot(I)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when startContinuousShot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 380
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 1

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 445
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopContinuousShot()V
    .locals 1

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0xd

    .line 421
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopContinuousShotCount()V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x21

    .line 427
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 392
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x22

    .line 394
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 385
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 387
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x12

    .line 451
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public switchDeviceParameters(Ljava/lang/String;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public switchMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 3

    .line 273
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchMode, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public takePicture()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when takePicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public takePictureEnded()V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mMainDevice:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->takePictureEnded()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mReleased:Z

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->beforeUnInit()V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->unInit()V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x1b

    .line 493
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public unRegisterStateCallback(Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mStateCB:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .locals 8

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x1f

    .line 506
    new-instance v7, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {p0, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 507
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateAuxPreviewSurfaceStatus(Z)V
    .locals 1

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x1d

    .line 513
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateBackgroundPreviewSurface(Ljava/lang/Object;II)V
    .locals 8

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x25

    .line 526
    new-instance v7, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/SurfaceControlInfo;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {p0, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 527
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateBackgroundPreviewSurfaceStatus(Z)V
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x23

    .line 533
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateScreenFromeType(I)V
    .locals 0

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mSettingManager:Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateScreenFormType(I)V

    return-void
.end method

.method public videoHDRSnapShot()V
    .locals 1

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x20

    .line 439
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 1

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x13

    .line 433
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
