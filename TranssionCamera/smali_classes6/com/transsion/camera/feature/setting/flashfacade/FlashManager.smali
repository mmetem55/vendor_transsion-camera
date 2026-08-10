.class public final Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
.super Ljava/lang/Object;
.source "FlashManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
.implements Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

.field private final mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

.field private final mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

.field private final mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

.field private final mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

.field private final mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

.field private mForceLowlight:Z

.field private mForceLowlightState:Z

.field private mIsAeLockTriggered:Z

.field private mIsMovieModeFrontNoFlash:Z

.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPreviewStopped:Z

.field private final mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

.field private mSatSupport:Z

.field private final mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private final mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;


# direct methods
.method public static synthetic $r8$lambda$hxQnb9TSWVZ7Aurn2EVeTIwbZ9M(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lambda$new$0([I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    .line 460
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 100
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    .line 101
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    .line 102
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    .line 103
    new-instance p3, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-direct {p3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    .line 104
    invoke-virtual {p3, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->setRecordStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;)V

    .line 105
    new-instance p3, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-direct {p3}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    .line 106
    new-instance p3, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    .line 107
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    .line 108
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 109
    new-instance p3, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-direct {p3, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    .line 110
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    invoke-direct {p2, p3, p1}, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    .line 111
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-direct {p1, p0, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    return-void
.end method

.method private isCurrentShouldCloseSfl()Z
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 387
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    .line 388
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v2

    .line 389
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v3, v3, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackWideUnSupportSFL:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz p0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0([I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 461
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 462
    aget p1, p1, v0

    .line 463
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    if-eq v0, p1, :cond_0

    .line 464
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    .line 465
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequest()V

    .line 466
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 453
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 454
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public capturing()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->capturing()Z

    move-result p0

    return p0
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 225
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->$SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->monitorType()Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    .line 245
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashFacade(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFlash(Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
.end method

.method public currentCameraId()Ljava/lang/String;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public exposureTimeNotAuto(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public facingFront()Z
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceLowLight()Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    return p0
.end method

.method public forceLowLightState()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlightState:Z

    return p0
.end method

.method public getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-object p0
.end method

.method public getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    return-object p0
.end method

.method public getIsMovieModeFrontNoFlash()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash_facade_movie_front_no_flash"

    .line 116
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    .line 118
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 119
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public isAeLockTriggered()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsAeLockTriggered:Z

    return p0
.end method

.method public isBackWideUnSupport()Z
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isCurrentShouldCloseSfl()Z

    move-result p0

    return p0
.end method

.method public isFrontCameraUnSupportSFL()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingFrontSupportedSFL:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainCameraBack()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingBackSupportedSFL:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mStreamId:I

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isoNotAuto(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lowLight()Z
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->lowLight()Z

    move-result p0

    return p0
.end method

.method public lowPower()Z
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "Battery"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

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

.method public lowTemperature()Z
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "Temperature"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBrightnessDetected(Z)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_ring_screen_light"

    .line 441
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->featureSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    .line 442
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->selfTiming()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->brightnessDetected(Z)V

    return-void
.end method

.method public onCaptureStart()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->captureStart()V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->captureStart()V

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onModeClose(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeKey:Ljava/lang/String;

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    return-void
.end method

.method public onNextReady()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->nextCaptureReady()V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->nextCaptureReady()V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->startMonitor()V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->previewStarted()V

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->stopMonitor()V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->setBrightnessCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->setCaptureStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor$ICaptureStateCallback;)V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->previewStopped()V

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mPreviewStopped:Z

    return-void
.end method

.method public onRecordStart()V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->recordStart()V

    return-void
.end method

.method public onRecordStop()V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->recordEnd()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->pause()V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->pause()V

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public periscopeCamera()Z
    .locals 1

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 294
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public recording()Z
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->recording()Z

    move-result p0

    return p0
.end method

.method public restoreToDefault()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowPower()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowTemperature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 279
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->restoreToDefault()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->reset()V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;->reset()V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->reset()V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->resume()V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->resume()V

    return-void
.end method

.method public sendCommandChangeRequest()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequestSelf()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequestSync()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueSync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAeLockTriggered(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsAeLockTriggered:Z

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->facingDetect()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->periscopeCamera()Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSupportedValuesBuilder:Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/SupportedValuesBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :goto_0
    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "on"

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mModeKey:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "auto"

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mIsMovieModeFrontNoFlash:Z

    if-eqz v1, :cond_3

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "ringscreenlight"

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v2, v3

    .line 211
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSatSupport:Z

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setForceLowlight(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlight:Z

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mBrightnessMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->lowLight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mForceLowlightState:Z

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mRecordStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->unInit()V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mSelfTimerStatusMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->unInit()V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFeatureManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFeatureManager;->unInit()V

    return-void
.end method

.method public updateFacadeValue(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateFacadeValue(Ljava/lang/String;Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashValueRepository:Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;

    .line 254
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/values/FlashValueRepository;->getFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;

    move-result-object p0

    .line 253
    invoke-virtual {v0, p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateFacadeValue(Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;Z)V

    return-void
.end method

.method public updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateFrontDualFlashValue(Ljava/lang/String;)V

    return-void
.end method

.method public updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFlashFacade:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V

    return-void
.end method

.method public updateLuminanceValue(I)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->mFeatureValueUpdater:Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FeatureValueUpdater;->updateLuminanceValue(I)V

    return-void
.end method
