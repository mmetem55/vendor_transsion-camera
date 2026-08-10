.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "PortraitModeEnhance.java"


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_portraitmode_enhance"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_OFF:Ljava/lang/String; = "off"

.field static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mIsCloseBySuperDefinition:Z

.field private mIsModeSupport:Z

.field private mIsModeSupportSuperDefinition:Z

.field private mIsSupportFullSize:Z

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPortraitModeEnhanceParameterConfigure:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

.field private mPortraitModeEnhanceSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    return-void
.end method

.method private handleRestriction(Z)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isFullSizeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceRestriction;->getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 166
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "relationgroup is null,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_2

    .line 172
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "relation is null,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isFullSizeMode()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
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

    const-string p0, "key_portraitmode_enhance"

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceParameterConfigure:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceParameterConfigure:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceParameterConfigure:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 94
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

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "portrait_mode_enhance_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_support_full_size"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsSupportFullSize:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
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

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_super_definition"

    const-string v5, "off"

    invoke-virtual {v2, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isFullSizeMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, " mIsCloseBySuperDefinition = "

    if-eqz p1, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], setValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initializeValue], setDefaultValue: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public isCameraFacingBack()Z
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCloseBySuperDefinition()Z
    .locals 3

    .line 199
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCloseBySuperDefinition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 132
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupport:Z

    const-string p1, "key_super_definition"

    .line 134
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsModeSupportSuperDefinition:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPortraitModeEnhanceValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->handleRestriction(Z)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mPortraitModeEnhanceParameterConfigure:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->sendSettingChangeRequest()V

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

    const-string v0, "key_super_definition"

    .line 192
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "off"

    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->mIsCloseBySuperDefinition:Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->handleRestriction(Z)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
