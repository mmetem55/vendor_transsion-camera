.class public Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;,
        Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAuxPreviewSize:Landroid/util/Size;

.field private mBackgroundPreviewSize:Landroid/util/Size;

.field private mCamera:Lcom/transsion/camera/adapter/CameraProxy;

.field private mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private final mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

.field private mIsOpenDoubleDevice:Z

.field private volatile mIsRestore:Z

.field private mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

.field private final mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

.field private mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private final mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private final mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

.field private mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SubDevCtrl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 71
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    .line 74
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;

    const-string v1, "closed"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 75
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;

    const-string v2, "openingCamera"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 76
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;

    const-string v2, "opened"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpenedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 77
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;

    const-string v2, "startingPreview"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewingState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 78
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;

    const-string v2, "previewed"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$PreviewedState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 79
    new-instance v1, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;

    const-string v2, "recording"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$RecordingState;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    .line 552
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;J)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 1494
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 1505
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 1517
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 1529
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$5;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 1560
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 1572
    new-instance v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$7;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpeningState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mOpenedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/util/Size;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewFrameCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mClosedState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinuousShotShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mContinueShotCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mRecordingState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsOpenDoubleDevice:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handleOnCameraError(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->handlePreviewError()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraProxy;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    return-object p1
.end method

.method private configSettingParameters(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraParameters;ZLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1595
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    if-eqz p3, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->setCameraCapabilities(Ljava/lang/String;Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 1599
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1600
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 1601
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1603
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setDataFlowType(I)V

    .line 1604
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p0, p2, p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private handleCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method private handleOnCameraError(I)V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->onCameraError(I)V

    return-void
.end method

.method private handlePreviewError()V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->previewError()V

    return-void
.end method

.method private setTagValue(Ljava/lang/String;)V
    .locals 2

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubDevCtrl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 518
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_0
    return-void
.end method

.method public cancelTakePicture()V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->cancelTakePicture()V

    return-void
.end method

.method public changeParameter(Ljava/lang/String;)V
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->changeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public changeParameterSelf(Ljava/lang/String;)V
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->changeParameterSelf(Ljava/lang/String;)V

    return-void
.end method

.method public checkSurfaceChanged(ILjava/lang/Object;II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewDifferent(Ljava/lang/Object;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isVideoSurfaceDifferent(Landroid/view/Surface;II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public closeCamera()V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->closeCamera()V

    return-void
.end method

.method public configCommand(Ljava/lang/String;)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->configCommand(Ljava/lang/String;)V

    return-void
.end method

.method public creatOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->createOutputChannel(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method public enableVideoAutoFlash(Z)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enableVideoAutoFlash(Z)V

    return-void
.end method

.method public enterCloseState()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enterCloseState()V

    return-void
.end method

.method public getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public init(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 86
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 87
    new-instance p2, Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$SubDeviceHandle;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    .line 88
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setTagValue(Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->setTagValue(Ljava/lang/String;)V

    return-void
.end method

.method public isClosed()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVssSupported()Z
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->isVssSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->setTagValue(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->setTagValue(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->openCamera(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPause(Z)V

    :cond_0
    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v1, :cond_0

    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_1

    .line 441
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[postRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    goto :goto_0

    .line 450
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    :goto_0
    return-void

    .line 435
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[postRestriction], mCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceConfigurator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public releaseCamera()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->releaseCamera()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->reset()V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/16 v0, 0x64

    .line 111
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public resetCameraOutputSurface()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->reset()V

    :cond_0
    return-void
.end method

.method public restoreParameters(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsRestore:Z

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->updateDynamicPriority()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPause(Z)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mNotifyCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    .line 131
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    return-void
.end method

.method public setOpenDoubleDevice(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mIsOpenDoubleDevice:Z

    return-void
.end method

.method public setSettingDeviceConfigurator(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_0
    return-void
.end method

.method public shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method public shutterSoundPlay(Ljava/lang/String;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method public snapShotForVideoHDR()V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->snapShotForVideoHDR()V

    return-void
.end method

.method public startContinuousShot(I)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startContinuousShot(I)V

    return-void
.end method

.method public startPreview()V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startPreview()V

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return-void
.end method

.method public stopContinuousShot()V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopContinuousShot()V

    return-void
.end method

.method public stopContinuousShotCount()V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopContinuousShotCount()V

    return-void
.end method

.method public stopPreview()V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopPreview()V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopRecording()V

    return-void
.end method

.method public stopRepeating()V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->stopRepeating()V

    return-void
.end method

.method public takePicture()V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->takePicture()V

    return-void
.end method

.method public takePictureEnded()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v0, :cond_1

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy;->isMTKCaptureFlow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureEnded(Z)V

    :cond_1
    return-void
.end method

.method public takePictureForRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 8

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 477
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p1

    .line 483
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[takePictureForRestriction], configParameters restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopPreview()V

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewSize(Landroid/util/Size;)V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 492
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;->onTakePictureStarted()V

    const/4 p1, 0x0

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mInfoCallback:Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    if-eqz v0, :cond_3

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->getOrientationInfo(Ljava/lang/String;)I

    move-result p1

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureOrientation(I)V

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setPictureGPSLocation(Landroid/location/Location;)V

    .line 500
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 501
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isNeedDeviceCaptureSound()Z

    move-result v6

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getCurShutterPriority()I

    move-result v7

    .line 500
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V

    return-void

    .line 472
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[takePictureForRestriction], mCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceConfigurator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingDeviceConfigurator:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    return-void
.end method

.method public updateAuxPreviewSurface(Ljava/lang/Object;II)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateAuxPreviewSurface(Ljava/lang/Object;II)Z

    return-void
.end method

.method public updateAuxSurfaceModeSupported(Z)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateAuxSurfaceModeSupport(Z)V

    return-void
.end method

.method public updateAuxSurfaceStatus(Z)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateAuxSurfaceStatus(Z)V

    return-void
.end method

.method public updateBackgroundPreviewSurface(Ljava/lang/Object;II)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)Z

    return-void
.end method

.method public updateBackgroundSurfaceModeSupported(Z)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateBackgroundSurfaceModeSupport(Z)V

    return-void
.end method

.method public updateBackgroundSurfaceStatus(Z)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateBackgroundSurfaceStatus(Z)V

    return-void
.end method

.method public updateCurrentModeAndType(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 220
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    if-nez p2, :cond_0

    .line 222
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOutputDataType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateType(I)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getDataFlowType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateDataFlowType(I)V

    return-void
.end method

.method public updateModeSetting(Lcom/transsion/camera/app/common/mode/ICameraMode;Lcom/transsion/camera/app/common/mode/ICameraMode;ZLjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 230
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v1, :cond_0

    .line 231
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "configModeSetting mCamera == null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v2

    .line 236
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isProfessionModeEnable()Z

    move-result v3

    .line 237
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result v4

    .line 238
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    .line 239
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v6

    .line 240
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v7

    .line 241
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v8

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v9

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct {v0, v9, v1, v10, v11}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->configSettingParameters(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraParameters;ZLjava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result v9

    .line 247
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isProfessionModeEnable()Z

    move-result v10

    .line 248
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result v11

    .line 249
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v12

    .line 250
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v13

    .line 251
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result v14

    .line 252
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v1

    .line 254
    invoke-static {v5, v12}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v15

    .line 255
    invoke-static {v6, v13}, Lcom/transsion/camera/utils/CameraUtil;->isRadioAndSizeEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v16

    if-ne v2, v9, :cond_1

    if-nez v15, :cond_1

    if-nez v16, :cond_1

    if-ne v7, v14, :cond_1

    if-ne v8, v1, :cond_1

    if-ne v3, v10, :cond_1

    if-eq v4, v11, :cond_9

    :cond_1
    if-eq v2, v9, :cond_2

    move/from16 v17, v4

    .line 261
    iget-object v4, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move/from16 p3, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string v3, "configModeSetting oldPluginEnable:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != newPluginEnable:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 p3, v11

    :goto_0
    if-eqz v15, :cond_3

    .line 264
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "or configModeSetting oldPictureSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " != newPictureSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    .line 267
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "or configModeSetting oldPostviewSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " != newPostviewSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4
    if-eq v7, v14, :cond_5

    .line 270
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configModeSetting oldInterpolationEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != newInterpolationEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5
    if-eq v8, v1, :cond_6

    .line 273
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configModeSetting oldTranssionCameraMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != newTranssionCameraMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_6
    move/from16 v1, v18

    if-eq v1, v10, :cond_7

    .line 276
    iget-object v2, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configModeSetting oldProfessionalModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " != newProfessionalModeEnable:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_7
    move/from16 v2, p3

    move/from16 v1, v17

    if-eq v1, v2, :cond_8

    .line 279
    iget-object v3, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSettingManager oldModeUltrazoomEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " != newModeUltrazoomEnable:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    :cond_9
    if-eqz p1, :cond_a

    .line 283
    invoke-interface/range {p1 .. p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    if-eqz p2, :cond_c

    .line 284
    invoke-interface/range {p2 .. p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isForceRecreateSession()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 285
    :cond_b
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "isForceRecreateSession"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 289
    :cond_c
    iget-object v1, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getThumbnailSource()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setModeThumbnailSource(I)V

    return-void
.end method

.method public updatePictureSurface()V
    .locals 9

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance] updatePictureSurface surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", yuvSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, v3, v4, v4, v2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    goto :goto_0

    .line 328
    :cond_0
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v7

    .line 329
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v8

    .line 328
    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    :goto_0
    if-nez v1, :cond_1

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    goto :goto_1

    .line 334
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v2

    .line 335
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v3

    .line 334
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z

    :goto_1
    return-void
.end method

.method public updatePostViewSurface()V
    .locals 9

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCamera:Lcom/transsion/camera/adapter/CameraProxy;

    if-nez v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updatePostViewSurface mCamera == null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPostViewSizes()Ljava/util/List;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getPostViewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isThumbnailPostViewSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)Z

    goto :goto_1

    .line 354
    :cond_2
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v7

    .line 355
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v1

    .line 354
    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateThumbnailSurface(Landroid/view/Surface;III)Z

    .line 359
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isFastThumbSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateFastThumbSurface(Landroid/view/Surface;III)Z

    goto :goto_3

    .line 365
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v2

    .line 366
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getFormat()I

    move-result v0

    .line 365
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateFastThumbSurface(Landroid/view/Surface;III)Z

    :goto_3
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mPreviewSize:Landroid/util/Size;

    .line 315
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mAuxPreviewSize:Landroid/util/Size;

    .line 316
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mBackgroundPreviewSize:Landroid/util/Size;

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->resetRequestedDataChannelMember()V

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;II)Z
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updatePreviewSurface(Ljava/lang/Object;II)Z

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewSurface needUpdate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", surface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cur id:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_0
    return v0
.end method

.method public updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCameraOutputSurface:Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->updateVideoSurface(Landroid/view/Surface;IIIZ)Z

    move-result p5

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoSurface needUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", videoFrameRate:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->updateOutputChannel()V

    :cond_0
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->mCurrentState:Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->snapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method
