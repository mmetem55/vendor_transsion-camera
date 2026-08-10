.class public Lcom/transsion/camera/feature/setting/hdr/Hdr;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Hdr.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDefaultValueWithMarket:Z

.field private mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

.field private mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

.field private mIsAIDetectionDefaultOff:Z

.field private mIsFromIntent:Z

.field private mIsHdrAsdBothSupport:Z

.field private mIsModeSupport:Z

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsAIDetectionDefaultOff:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr$1;-><init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 257
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;-><init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    return-object p0
.end method

.method private handleHdrRestriction(Z)V
    .locals 6

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    .line 228
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->isShot2shotNeed()Z

    move-result v1

    .line 227
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    if-eqz v1, :cond_4

    .line 230
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsHdrAsdBothSupport:Z

    const-string v2, "off"

    const-string v3, "auto"

    if-nez v1, :cond_1

    .line 231
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "0,1,auto"

    const-string v5, "key_asd"

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p1, v5, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    .line 234
    invoke-virtual {p1, v5, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 238
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "key_super_definition"

    const-string v1, "off,on"

    .line 239
    invoke-virtual {p1, v0, v2, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_4
    return-void
.end method

.method private parseIntentOnCreate(Landroid/content/Intent;)V
    .locals 1

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsFromIntent:Z

    return-void
.end method

.method private removeExclusionOverrides()V
    .locals 1

    const-string v0, "key_flash"

    .line 246
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_flash_facade"

    .line 247
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public defalutValueWithMarket()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    return p0
.end method

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

.method public getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_hdr"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 115
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 193
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

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "hdr_asd_both_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsHdrAsdBothSupport:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_ai_detection_default_close"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsAIDetectionDefaultOff:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "hdr_default_value_with_market"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mDefaultValueWithMarket:Z

    .line 54
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->parseIntentOnCreate(Landroid/content/Intent;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_ai_detection"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_hdr"

    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsFromIntent:Z

    if-eqz v0, :cond_0

    const-string p1, "off"

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isAIDetectionDefaultOff()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsAIDetectionDefaultOff:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    return p0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onHdrValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->removeExclusionOverrides()V

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(Z)V

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "key_hdr"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;->onHdrValueChanged()V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
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

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "off"

    const-string v2, "auto"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 136
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v3, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[overrideValues] headerKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",supportValues = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v3, "key_flash"

    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "key_asd_enhance"

    const-string v6, "key_filter"

    const-string v7, "key_flash_facade"

    if-nez v4, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 146
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 147
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 151
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onValueChanged(Ljava/lang/String;)V

    :cond_3
    const-string v0, "key_super_definition"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 157
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->onValueChanged(Ljava/lang/String;)V

    .line 160
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "key_ai_detection"

    .line 185
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(Z)V

    :cond_0
    return-void
.end method

.method public resetRestriction(Ljava/lang/String;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->isShot2shotNeed()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetRestriction] hdr"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_ai_detection"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateModeDeviceState(I)V
    .locals 2

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "opened"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;->setCameraId(I)V

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;->updateModeDeviceState(I)V

    return-void
.end method
