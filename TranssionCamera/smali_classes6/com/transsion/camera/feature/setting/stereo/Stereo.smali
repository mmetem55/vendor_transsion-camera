.class public Lcom/transsion/camera/feature/setting/stereo/Stereo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Stereo.java"


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mEnableRTDof:Z

.field private mIsCapturing:Z

.field private mIsModeSupport:Z

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mEnableRTDof:Z

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsModeSupport:Z

    .line 28
    iput v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mWarningType:I

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsCapturing:Z

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/setting/stereo/Stereo$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo$1;-><init>(Lcom/transsion/camera/feature/setting/stereo/Stereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 121
    new-instance v0, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo$2;-><init>(Lcom/transsion/camera/feature/setting/stereo/Stereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/stereo/Stereo;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateRTDofValue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/stereo/Stereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private updateBWLensCoveredValue(I)V
    .locals 2

    const-string v0, "key_bw_camera_lens_covered"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_covered"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_not_covered"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateRTDofValue(I)V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsCapturing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 165
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mEnableRTDof:Z

    return-void
.end method

.method private updateRTDofValue(Z)V
    .locals 2

    .line 151
    iget v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mWarningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mEnableRTDof:Z

    goto :goto_0

    .line 157
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mEnableRTDof:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsModeSupport:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_stereo"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/stereo/Stereo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 35
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_bw_camera_lens_covered"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

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

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mWarningType:I

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsCapturing:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateRTDofValue(Z)V

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateBWLensCoveredValue(I)V

    return-void
.end method

.method public isRTDofEnable()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mEnableRTDof:Z

    return p0
.end method

.method public ismIsModeSupport()Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected updateWarningTypeAndSendRequest(I)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mWarningType:I

    if-eq v0, p1, :cond_0

    .line 178
    iput p1, p0, Lcom/transsion/camera/feature/setting/stereo/Stereo;->mWarningType:I

    .line 179
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateRTDofValue(I)V

    .line 180
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->updateBWLensCoveredValue(I)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
