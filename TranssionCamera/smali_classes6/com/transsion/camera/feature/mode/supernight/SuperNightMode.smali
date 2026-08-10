.class public Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;,
        Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAPTURE_FLOW_NIGHT:I = 0x1

.field public static final CAPTURE_FLOW_NO_ALGO:I = 0x0

.field public static final CAPTURE_FLOW_STABLE_NIGHT:I = 0x2

.field private static final LIMIT_BV:I = 0x14

.field private static final LIMIT_ISO:I = 0x190

.field private static final LIMIT_ISO_FOR_STABLE_ALGO:I = 0xc80

.field private static final SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field private mAlgoThreshold:I

.field private mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mCurrentFocusState:Ljava/lang/String;

.field private mCurrentResult:Landroid/hardware/camera2/CaptureResult;

.field private mFlashTorchSupport:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsStableModeSupport:Z

.field private mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

.field private final mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private final mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mPortraitModeEnhanceSupport:Z

.field private mPreviewSize:Landroid/util/Size;

.field private mShutterClickSampleId:I

.field private mSoundLoaded:Z

.field private mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

.field private final mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

.field private mUseFaceBeauty:Z


# direct methods
.method public static synthetic $r8$lambda$Xc9AxtRJMqKQA19hky19R9UXG9k(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->lambda$initModeSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$llH1fGviRzjBMfUOKFGJUZIr2Z4(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    const-string v1, "/product/media/audio/ui/camera_click.ogg"

    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    const-string p1, "INACTIVE"

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    .line 65
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 66
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    .line 70
    iput p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    .line 76
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 78
    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableNightCaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    .line 82
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 83
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 84
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    .line 442
    new-instance p1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/sound/IActionSound;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableModeEnteredInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getShutterTypeSelftimerOn()I

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mInStableModeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;IZ)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->startCapturingAnim(IZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->stopCapturingAnim()V

    return-void
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/util/Size;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private declared-synchronized changeCaptureFlow(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 511
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNoAlgoCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    goto :goto_0

    .line 504
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mNightCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    if-eq v0, p1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCaptureFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onExit()V

    .line 517
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    .line 518
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 446
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private getFlashValue()Ljava/lang/String;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initModeSound()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-nez v1, :cond_0

    .line 419
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    :cond_0
    return-void
.end method

.method private initModeUI()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->init(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 453
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "It\'s a project under 4G,close superNightAlgo in Monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 457
    :cond_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLowLightScene(Landroid/hardware/camera2/CaptureResult;I)Z

    move-result p0

    return p0
.end method

.method private isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 464
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "It\'s a project under 4G,close superNightStableAlgo in Monkey scenarios."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    .line 468
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedSuperNightStableAlgo current iso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0xc80

    if-lt p0, p1, :cond_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    return p2
.end method

.method private synthetic lambda$initModeSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 422
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 424
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    .line 426
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private declared-synchronized onCaptureDone(Z)V
    .locals 1

    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureDone()Z

    .line 542
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onCaptureStart()V
    .locals 1

    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetCaptureFlow(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 523
    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    if-nez p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private selectCaptureFlow()V
    .locals 7

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentResult:Landroid/hardware/camera2/CaptureResult;

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 477
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->isStable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 479
    :goto_0
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_super_night_stable"

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    .line 480
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 482
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightStableAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v6

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_3

    .line 488
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->isNeedSuperNightAlgo(Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 495
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 496
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->changeCaptureFlow(I)V

    :cond_4
    return-void
.end method

.method private startCapturingAnim(IZ)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->showProcessingAnim(IZ)V

    .line 549
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x2

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private stopCapturingAnim()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->hideProcessingAnim()V

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method private unInitModeSound()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    if-eqz v2, :cond_0

    .line 435
    iget v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mShutterClickSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    :cond_0
    const/4 v1, 0x0

    .line 437
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 438
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unInitModeUI()V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->unInit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 565
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;
    .locals 1

    .line 570
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_super_night"

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 382
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_distortion_correction"

    .line 383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_setting_smart_denoise"

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_edit_watermark"

    .line 385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_camera_click_zoom"

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_night_3dnr"

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_fingerprint_capture"

    .line 388
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    if-eqz v1, :cond_0

    const-string v1, "key_face_beauty"

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/supernight/R$array;->supernight_mode_preference_setting_ui_entries:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.transsion.camera.ui.setting.picturequality.PictureQualitySettingUIEntry"

    .line 394
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "key_picture_quality"

    .line 396
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    if-eqz p0, :cond_2

    const-string p0, "key_portraitmode_enhance"

    .line 399
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 402
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->getFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    const/4 v0, 0x0

    .line 276
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v1, "supernight_reduce_preview_size_height"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-super {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 213
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPreviewSize:Landroid/util/Size;

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getShutterTypeSelfTimerOff()I

    move-result p0

    return p0
.end method

.method public getThumbnailSource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 113
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 114
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const-string p2, "key_focus_state"

    .line 115
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->initModeUI()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->initModeSound()V

    .line 119
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_mode_support_face_beauty:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/supernight/R$bool;->supernight_front_support_torch:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string p3, "1"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    goto :goto_1

    .line 126
    :cond_1
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    :goto_1
    const-string p2, "supernight_algo_threshold"

    .line 129
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mAlgoThreshold:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "portrait_enhance_night_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mPortraitModeEnhanceSupport:Z

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onEnter()V

    const-string p1, "key_self_timer_status"

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public isNeedDeviceCaptureSound()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->isNeedDeviceCaptureSound()Z

    move-result p0

    return p0
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportFlashTorch()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFlashTorchSupport:Z

    return p0
.end method

.method public isUseFaceBeauty()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mUseFaceBeauty:Z

    return p0
.end method

.method public notifyPictureTaken([BZI)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 353
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePictureEnded()V

    .line 354
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult()V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPictureTaken picCountRemaining: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz p3, :cond_1

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x1

    const/4 p3, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, p3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    :cond_1
    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onModeCaptureFailed()V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeCaptureFailed, but current mode was unInit, so do nothing."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed()V

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 158
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "key_super_night_stable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-nez p2, :cond_3

    goto/16 :goto_4

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 181
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_2
    move v1, v3

    goto :goto_3

    :sswitch_3
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :sswitch_4
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :sswitch_5
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :cond_7
    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 183
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    goto :goto_4

    .line 193
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    goto :goto_4

    .line 188
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->resume()V

    goto :goto_4

    :pswitch_4
    const-string p1, "on"

    .line 164
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    goto :goto_4

    .line 169
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_9

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    goto :goto_4

    .line 161
    :pswitch_5
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    :cond_9
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42841f76 -> :sswitch_2
        -0x3657769a -> :sswitch_1
        0x31f2225f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0xaded465 -> :sswitch_5
        -0x5096c46 -> :sswitch_4
        0x31566b69 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSettingReady()V
    .locals 3

    .line 283
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_night_stable"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v2, :cond_1

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 288
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    .line 289
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->init()V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mModeUI:Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->inflateView()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3

    .line 296
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 299
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mIsStableModeSupport:Z

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 301
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz p0, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onOpened()V

    :cond_4
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->pause()V

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->selectCaptureFlow()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterClick()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 228
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterClickBefore(I)Z
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_touch_capture"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 235
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterClickBefore, isTouchCaptureOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentFocusState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCurrentFocusState:Ljava/lang/String;

    const-string v2, "ACTIVE_SCAN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    return v2

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz v0, :cond_1

    .line 243
    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getCaptureCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterClickBefore return, count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 249
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureStart()V

    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->resetCaptureFlow(Z)V

    :goto_0
    return p1
.end method

.method public onShutterStart(Z)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterStart(Z)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mCaptureFlow:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onShutterStart()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 319
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onClosed()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_1
    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->onCaptureDone(Z)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_0

    .line 581
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 583
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 575
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const-string v0, "key_self_timer_status"

    .line 146
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 147
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_super_night_stable"

    .line 148
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->mStableMode:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->unInit()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInitModeUI()V

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->unInitModeSound()V

    return-void
.end method
