.class public Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "ProfessionalMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;
.implements Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;",
        "Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;"
    }
.end annotation


# static fields
.field private static final EXPOSURE_TIME_ONE_MILLI_SECOND:J = 0xf4240L

.field public static final GESTURE_PRIORITY:I = 0x9

.field private static final LIMIT_ISO:I = 0x190

.field private static final LIMIT_SHUTTER_TIME_MAX:I = 0x5f5e100

.field private static final LIMIT_SHUTTER_TIME_MIN:I = 0x1e84800

.field private static final MSG_PRO_PARA_POST_RESTRICTION:I = 0x3e8


# instance fields
.field private mCaptureProcessing:Z

.field private mCaptureStopListener:Landroid/view/View$OnClickListener;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mExposureTimeValue:J

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mHandler:Landroid/os/Handler;

.field private mISOValue:I

.field private mIsCapturing:Z

.field private mIsSupportSmileDetection:Z

.field private mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

.field private mNeedSmartDenoise:Z

.field private mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

.field private mUpdateTopbar:Z


# direct methods
.method public static synthetic $r8$lambda$kYwRWUQnL8iqt8_mY6M-8z2Y8xk(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 76
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 78
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    .line 80
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 622
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    .line 631
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->cancelCapture()Z

    move-result p0

    return p0
.end method

.method private cancelCapture()Z
    .locals 5

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCapture mCaptureProcessing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-eqz v0, :cond_1

    .line 603
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->resetCapturingUI()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->cancelTakePicture()V

    .line 608
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resetCaptureData()V

    .line 609
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x5b

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v2, "capture_state"

    const-string v3, "capture_end"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 616
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return v4

    :cond_1
    return v1
.end method

.method private confirmCapture(I)Z
    .locals 4

    .line 582
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p1

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCapture mCaptureProcessing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x1

    .line 586
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 587
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 588
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    const/4 v1, 0x0

    .line 589
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 592
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->startCapturingBeginAnim(J)V

    :cond_0
    return p1
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private getFlashRestrictionValue()Ljava/lang/String;
    .locals 6

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_exposure_time"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_iso"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "Battery"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v3

    const-wide/16 v4, -0x1

    .line 515
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "off"

    .line 517
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "mutual_off"

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_5

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    move-object v0, v5

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v2

    .line 533
    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFlashRestrictionValue, flashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideSeekBar()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    :cond_0
    return-void
.end method

.method private isNeedCancelCaptureFun()Z
    .locals 4

    .line 490
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/32 v2, 0x3b9aca00

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 4

    .line 633
    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 634
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 640
    :cond_0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    .line 641
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    const/16 p1, 0x190

    const/4 p3, 0x1

    if-lt p2, p1, :cond_2

    const-wide/32 p1, 0x5f5e100

    cmp-long p1, v0, p1

    if-gtz p1, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 646
    :goto_0
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    if-eq p1, p2, :cond_3

    .line 647
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 648
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    xor-int/2addr p2, p3

    .line 649
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrameResult, SmartDenoise needSmartDenoise: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needPostRestriction: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getSwitchRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p1, "key_setting_smart_denoise"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private notifyToProfessionUI(IZ)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->updateUIState(IZ)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onCaptureDone()V
    .locals 3

    monitor-enter p0

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureDone. mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 664
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 665
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getSwitchRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    const-string v2, "key_setting_smart_denoise"

    .line 668
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    .line 670
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 674
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->resetCapturingUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onCaptureStart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 659
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsCapturing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private refreshShutterUI(Z)V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_self_timer"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 476
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 478
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getShutterTypeSelftimerOn()I

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xd

    if-eqz p1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    move v2, v1

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 485
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(IZ)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 436
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

    .line 60
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;
    .locals 1

    .line 441
    new-instance v0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 2

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    const/4 p1, 0x0

    .line 462
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    if-nez p2, :cond_0

    .line 464
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v1, p3, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 465
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    :cond_0
    return-void
.end method

.method public getDataFlowType()I
    .locals 3

    .line 246
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 249
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    if-nez p0, :cond_2

    .line 250
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result p0

    if-nez p0, :cond_2

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x4

    .line 255
    :cond_3
    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_professional"

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_distortion_correction"

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_setting_smart_denoise"

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_edit_watermark"

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_fingerprint_capture"

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_taint_detection"

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    if-eqz p0, :cond_0

    const-string p0, "key_smile_detection"

    .line 412
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/mode/professional/R$array;->pro_mode_preference_setting_ui_entries:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.transsion.camera.ui.setting.picturequality.PictureQualitySettingUIEntry"

    .line 415
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_picture_quality"

    .line 417
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 421
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 391
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashRestrictionValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mutual_off"

    .line 393
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getProParameterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 395
    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 394
    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 397
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 8

    .line 118
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 119
    instance-of p1, p2, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz p1, :cond_0

    .line 120
    move-object p1, p2

    check-cast p1, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    .line 123
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object v4

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 127
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 128
    new-instance p1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 129
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v7, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    move-object v0, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    .line 130
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->init()V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->seCaptureStopListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    const-string p1, "key_exposure_time"

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p3, "key_iso"

    .line 136
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p4, "key_picture_size"

    .line 137
    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 139
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/transsion/camera/feature/mode/professional/R$bool;->pro_mode_support_smile_detection:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mIsSupportSmileDetection:Z

    if-eqz p1, :cond_1

    .line 143
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 145
    :cond_1
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    :cond_2
    const/4 p1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x9

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method protected isExposureTimeAuto()Z
    .locals 4

    .line 471
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x58

    if-eq p1, v0, :cond_1

    const/16 v0, 0x59

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    goto :goto_0

    .line 559
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_6

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    goto :goto_0

    .line 545
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 546
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 547
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    goto :goto_0

    .line 541
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public notifyPictureTaken([BZI)I
    .locals 2

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->notifyPictureTaken([BZI)I

    if-nez p2, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    :cond_0
    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 452
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p3, 0x5b

    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 454
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v1, p3, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 455
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return p1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isSeekBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->hideSeekBarIfNeed(Z)V

    return v1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->isCaptureButtonEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->cancelCapture()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .locals 1

    .line 367
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onDoubleTap(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLongPress(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onModeCaptureFailed()V
    .locals 5

    .line 295
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed()V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x5b

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 302
    invoke-direct {p0, v0, v4}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onProgressEnd()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "capturing animator end."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->stopCapturingBeginAnim()V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setCaptureButtonEnable(Z)V

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->startCapturingEndAnim()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 315
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->onScreenFormChanged(IZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 169
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 170
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACTIVE_SCAN"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "key_picture_size"

    .line 171
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    :cond_2
    const-string v0, "key_exposure_time"

    .line 174
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const-string v6, "key_iso"

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    .line 175
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mExposureTimeValue:J

    .line 176
    invoke-direct {p0, v7}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 178
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    if-nez v1, :cond_4

    .line 180
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    if-eqz v1, :cond_4

    .line 187
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 194
    :cond_4
    :goto_0
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mISOValue:I

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 197
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    if-nez p1, :cond_6

    .line 198
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    goto :goto_1

    .line 202
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 204
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    if-eqz p1, :cond_6

    .line 205
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSettingReady()V
    .locals 4

    .line 323
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->refreshShutterUI(Z)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$array;->pro_mode_custom_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->createSettingUISpecList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 331
    new-instance v3, Lcom/transsion/camera/feature/mode/professional/ui/SettingItemUI;

    invoke-direct {v3, v2}, Lcom/transsion/camera/feature/mode/professional/ui/SettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 332
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->updateSettingItemList(Ljava/util/List;)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setEnable(Z)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_3
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->confirmCapture(I)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .locals 1

    .line 426
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureStart()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->setEnable(Z)V

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->hideSeekBar()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 278
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_exposure_private"

    const-string v5, "off"

    .line 277
    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 281
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 283
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mNeedSmartDenoise:Z

    .line 284
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->onCaptureDone()V

    .line 285
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mCaptureProcessing:Z

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->isNeedCancelCaptureFun()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x5b

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->notifyToProfessionUI(IZ)V

    return-void
.end method

.method public resume()V
    .locals 5

    .line 260
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 262
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_exposure_private"

    const-string v3, "on"

    const/4 v4, 0x1

    .line 261
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->inflateViewIfNeed(I)V

    :cond_0
    return-void
.end method

.method public sendProParameterPostRestriction()V
    .locals 3

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashRestrictionValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mutual_off"

    .line 376
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 377
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mUpdateTopbar:Z

    .line 380
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ProfessionalRestriction;->getProParameterRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 215
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->unInit()V

    .line 218
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->mModeUIManager:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    const-string v0, "key_exposure_time"

    .line 222
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_iso"

    .line 223
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_picture_size"

    .line 224
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method
