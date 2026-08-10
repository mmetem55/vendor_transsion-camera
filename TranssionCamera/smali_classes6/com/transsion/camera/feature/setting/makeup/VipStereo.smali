.class public Lcom/transsion/camera/feature/setting/makeup/VipStereo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VipStereo.java"


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_vip_stereo"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mDefaultValue:Ljava/lang/String;

.field private mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mEnableRTDof:Z

.field private mFeatureValue:Ljava/lang/String;

.field private mIsCapturing:Z

.field private mIsModeSupport:Z

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 147
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo$2;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private is2xBlurCamera(Ljava/lang/String;)Z
    .locals 0

    .line 220
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isBlurCamera(Ljava/lang/String;)Z
    .locals 0

    .line 224
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private updateBWLensCoveredValue(I)V
    .locals 2

    const-string v0, "key_bw_camera_lens_covered"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_covered"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "bw_lens_not_covered"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateRTDofValue(I)V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 191
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return-void
.end method

.method private updateRTDofValue(Z)V
    .locals 2

    .line 177
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    goto :goto_0

    .line 183
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

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

    .line 170
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_vip_stereo"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/VipStereoParam;-><init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 81
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

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public goingToChangeValue(Ljava/lang/String;)V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "f0.0"

    .line 118
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goingToChangeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "key_vip_stereo_feature"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-string p1, "f0.0"

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_bw_camera_lens_covered"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mBWLensCoveredResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

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

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    if-nez p2, :cond_0

    .line 45
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mDefaultValue:Ljava/lang/String;

    .line 46
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsCapturing:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(Z)V

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateBWLensCoveredValue(I)V

    return-void
.end method

.method public isRTDofEnable()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mEnableRTDof:Z

    return p0
.end method

.method public ismIsModeSupport()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeUpdate([Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

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

    .line 203
    iget v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    if-eq v0, p1, :cond_0

    .line 204
    iput p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->mWarningType:I

    .line 205
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateRTDofValue(I)V

    .line 206
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateBWLensCoveredValue(I)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
