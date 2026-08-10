.class public Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SuperDefinition.java"


# static fields
.field private static final HIGH_DEFINITION_MODE:Ljava/lang/String; = "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isAsdMode:Z

.field private isFrontAsdModeDefault:Z

.field private mBillionPixelSupport:Z

.field private mCloseByBv:Z

.field private mDocHDSupport:Z

.field private mHighDefinitionMode:Z

.field private mIsModeSupport:Z

.field private mIsSupportFullSize:Z

.field mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

.field private mPreviousState:Ljava/lang/String;

.field private mSRClose:Z

.field private mSatSuppot:Z

.field mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const-string v0, "off"

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    return-void
.end method

.method private handleRestriction(Z)V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionRestriction;->getSuperDefinitionRestriction(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_portraitmode_enhance"

    .line 224
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string v0, "key_asd_enhance"

    .line 225
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 227
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

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

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_super_definition"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mParameterConfigure:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    return-object p0
.end method

.method public getPreviousState()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 120
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 173
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

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-object v0

    .line 133
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "billion_pixel_support"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "high_definition_mode"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "is_support_full_size"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "doc_high_definition_mode"

    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    const-string p3, "front_cam_mode_default"

    .line 55
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 57
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    :cond_0
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

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_super_definition"

    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 83
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 86
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public isAsdMode()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    return p0
.end method

.method public isBillionPixelSupport()Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mBillionPixelSupport:Z

    return p0
.end method

.method public isCameraFacingBack()Z
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isClosebyBv()Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    return p0
.end method

.method public isHighDefinitionMode()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    return p0
.end method

.method public isSRClose()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    return p0
.end method

.method public isSupportFullSize()Z
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsSupportFullSize:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 8

    .line 98
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 99
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    const-string v0, "off"

    if-eqz p1, :cond_2

    .line 100
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    if-nez v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "key_super_definition"

    const-string v4, "off"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    const-string v3, "on"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string p1, "on"

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 108
    :cond_2
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    const-string v3, "off"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    .line 115
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 93
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 178
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSuperDefinitionValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mPreviousState:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v2, "key_super_definition"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->handleRestriction(Z)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_definition"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_portraitmode_enhance"

    .line 140
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "on"

    const-string v2, "off"

    if-nez v0, :cond_3

    const-string v0, "key_hdr"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    .line 146
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mCloseByBv:Z

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 149
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mDocHDSupport:Z

    if-eqz v0, :cond_2

    .line 150
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSRClose:Z

    .line 151
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 141
    :cond_3
    :goto_0
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 142
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->onValueChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 144
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->onValueChanged(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->handleRestriction(Z)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 13

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_4

    .line 192
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mHighDefinitionMode:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isFrontAsdModeDefault:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mIsModeSupport:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 204
    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "key_super_definition"

    const-string v5, "off"

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "on"

    .line 198
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "key_super_definition"

    const-string v3, "on"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_1
    return-void

    .line 193
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getStoreScope()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "key_super_definition"

    const-string v9, "off"

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSatSupport(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->mSatSuppot:Z

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 72
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateModeDeviceState(I)V
    .locals 0

    return-void
.end method
