.class public Lcom/transsion/camera/feature/setting/asd/Asd;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Asd.java"


# static fields
.field public static final ASD_CLOSE:I = 0x1

.field public static final ASD_OPEN:I = 0x0

.field public static final NIGHTSHOT_CLOSE:I = 0x3

.field public static final NIGHTSHOT_OPEN:I = 0x2

.field public static final RESET_VALUE:I = 0x4

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isAsdMode:Z

.field private isBeautyMode:Z

.field private isPMasterMode:Z

.field private isSTBlurMode:Z

.field private isSurpportMode:Z

.field private isTimelapsePhotoMode:Z

.field private isVsdofMode:Z

.field private mAISuperDefinitionAlgoSupport:Z

.field private mAISuperResolutionSupport:Z

.field private mASDEnhanceSupport:Z

.field private mAsdDefaultValue:Ljava/lang/String;

.field private mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentZoomState:Z

.field private mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mFakeCameraSupport:Z

.field private mFilterSupportMfnr:Z

.field private mFilterValue:Ljava/lang/String;

.field private mFlashValue:Ljava/lang/String;

.field private mFrontLimitBV:I

.field private mFullSizeSupport:Z

.field private mHighDefinitionMode:Z

.field private mHighResolutionSupport:Z

.field private mIsAIDetectionDefaultOff:Z

.field private mIsArcFilterSupport:Z

.field private mIsHdrAsdBothSupport:Z

.field private mLightSuperNightSupport:Z

.field private mLimitBV:I

.field private mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mNormalNightSupport:Z

.field private mPlatformMfnrSupport:Z

.field private mPortraitEnhanceSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSkipMiddleNightSetting:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSuperNightSupport:Z

.field private mSuperResolutionSupport:Z

.field private mWideLimitBV:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mNormalNightSupport:Z

    const-string v1, "auto"

    .line 85
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdDefaultValue:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFullSizeSupport:Z

    const/16 v1, -0x14

    .line 87
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLimitBV:I

    .line 88
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFrontLimitBV:I

    .line 89
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideLimitBV:I

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPlatformMfnrSupport:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLightSuperNightSupport:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightSupport:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperResolutionSupport:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperDefinitionAlgoSupport:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mCurrentZoomState:Z

    .line 97
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterSupportMfnr:Z

    .line 112
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAIDetectionDefaultOff:Z

    .line 304
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$1;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 389
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/Asd$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/Asd$2;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/asd/Asd;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mCurrentZoomState:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/setting/asd/Asd;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mCurrentZoomState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_flash_facade"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private isAsdSupport()Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 103
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v2, "0"

    .line 104
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    const-string v1, "-1"

    .line 105
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isNightShotSupport()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPlatformMfnrSupport:Z

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

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCustomDefaultValue()Ljava/lang/String;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getFakeCameraSupport()Z
    .locals 0

    .line 410
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    return p0
.end method

.method public getHdrAsdBothSupport()Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrAsdBothSupport:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_asd"

    return-object p0
.end method

.method protected getLimitBV()I
    .locals 2

    .line 503
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideLimitBV:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLimitBV:I

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFrontLimitBV:I

    :cond_1
    return v0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_filter"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParametersConfigure mFlashValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFlashValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mFilterValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isNightShotSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    return-object p0
.end method

.method public getPlatformMfnrSupport()Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPlatformMfnrSupport:Z

    return p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 186
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

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

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "hdr_asd_both_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsHdrAsdBothSupport:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "high_definition_mode"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "is_support_full_size"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFullSizeSupport:Z

    const-string p3, "asd_default_value"

    .line 131
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdDefaultValue:Ljava/lang/String;

    const-string p3, "high_definition_limit_bv"

    .line 132
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLimitBV:I

    const-string p3, "high_definition_wide_limit_bv"

    .line 133
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mWideLimitBV:I

    const-string p3, "high_definition_front_limit_bv"

    .line 134
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFrontLimitBV:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "platform_mfnr_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPlatformMfnrSupport:Z

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ai_super_resolution_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperResolutionSupport:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ai_super_definition_algo_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperDefinitionAlgoSupport:Z

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "filter_support_mfnr"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterSupportMfnr:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "is_ai_detection_default_close"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAIDetectionDefaultOff:Z

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_flash"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_flash_facade"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_filter"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "wide_camera"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_ai_detection"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p3, "key_fake_asd_camera_status"

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 148
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p1

    const-string p2, "key_mu_monomer"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 165
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "0"

    .line 170
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 175
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], DataStore.getValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    return-void
.end method

.method public isAIDetectionDefaultOff()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsAIDetectionDefaultOff:Z

    return p0
.end method

.method protected isAISuperDefinitionAlgoSupport()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperDefinitionAlgoSupport:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

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

.method protected isAISuperResolutionSupport()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAISuperResolutionSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isASDEnhanceSupport()Z
    .locals 0

    .line 453
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    return p0
.end method

.method protected isAsdMode()Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    return p0
.end method

.method protected isBeautyMode()Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode:Z

    return p0
.end method

.method protected isFrontCamera()Z
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFullSizeMode()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFullSizeSupport:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighDefinitionMode()Z
    .locals 0

    .line 445
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighDefinitionMode:Z

    return p0
.end method

.method public isHighResolutionSupport()Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    return p0
.end method

.method public isLightSuperNightSupport()Z
    .locals 0

    .line 512
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLightSuperNightSupport:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    return p0
.end method

.method protected isPMasterMode()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    return p0
.end method

.method protected isPMasterModeWithDualCam()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBlurCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPMasterModeWithSingleBlur()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mMonomerSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_mu_monomer"

    .line 495
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "f0.0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortraitEnhanceSupport()Z
    .locals 0

    .line 457
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    return p0
.end method

.method public isSTBlurMode()Z
    .locals 0

    .line 461
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode:Z

    return p0
.end method

.method public isSuperNightSupport()Z
    .locals 0

    .line 516
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightSupport:Z

    return p0
.end method

.method public isSuperResolutionSupport()Z
    .locals 0

    .line 441
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    return p0
.end method

.method protected isSupportNormalNight()Z
    .locals 0

    .line 481
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mNormalNightSupport:Z

    return p0
.end method

.method protected isTimelapsePhotoMode()Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode:Z

    return p0
.end method

.method protected isVsdofMode()Z
    .locals 0

    .line 465
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode:Z

    return p0
.end method

.method public needSkipMiddleNightSetting()Z
    .locals 4

    .line 419
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFilterSupportMfnr:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "key_filter"

    .line 420
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    if-eqz v3, :cond_0

    const-string v3, "0"

    .line 422
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-1"

    .line 423
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 429
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    if-nez v3, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public onFakeCameraStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v0, "key_fake_asd_camera_status"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 253
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    .line 254
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode:Z

    .line 255
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode:Z

    .line 256
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode:Z

    .line 257
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    .line 258
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    .line 259
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    .line 260
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    .line 261
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLightSuperNightSupport:Z

    .line 262
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightSupport:Z

    .line 263
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode:Z

    .line 264
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 266
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 268
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->onFakeCameraStatusChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSurpportMode:Z

    const-string p2, "key_asd_enhance"

    .line 229
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mASDEnhanceSupport:Z

    const-string p2, "key_fake_asd_camera"

    .line 230
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mFakeCameraSupport:Z

    const-string p2, "key_setting_smart_denoise"

    .line 232
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSkipMiddleNightSetting:Z

    const-string p2, "key_super_resolution"

    .line 233
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperResolutionSupport:Z

    const-string p2, "key_filter"

    .line 234
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mIsArcFilterSupport:Z

    const-string p2, "key_high_resolution"

    .line 235
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mHighResolutionSupport:Z

    const-string p2, "key_portraitmode_enhance"

    .line 236
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mPortraitEnhanceSupport:Z

    const-string p2, "key_night_3dnr"

    .line 237
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mNormalNightSupport:Z

    const-string p2, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    .line 238
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode:Z

    const-string p2, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    .line 239
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode:Z

    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    .line 240
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode:Z

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 241
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode:Z

    const-string p2, "key_super_night_light"

    .line 242
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mLightSuperNightSupport:Z

    const-string p2, "key_super_night"

    .line 243
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mSuperNightSupport:Z

    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 244
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode:Z

    const-string p2, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    .line 245
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    .line 246
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.mode.facebeauty.MultiFaceBeautyModeEntry"

    .line 247
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    .line 248
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged old value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    .line 378
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mAsdParameterConfig:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 380
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 153
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_flash"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_flash_facade"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_filter"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_super_definition"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_ai_detection"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_camera_zoom"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
