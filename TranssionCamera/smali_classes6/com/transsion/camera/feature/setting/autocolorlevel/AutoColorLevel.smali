.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "AutoColorLevel.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArcFilterSupport:Z

.field private mModeSupport:Z

.field private mOverrideValueByFilter:Ljava/lang/String;

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private mSuperDefinitionSupport:Z

.field private mSuperDefinitionSupportFullSize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    return-void
.end method

.method private initValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isCameraFacingBack()Z
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportFullSize()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isCameraFacingBack()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method filterOff()Z
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "key_filter"

    .line 85
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 87
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-1"

    .line 88
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
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

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_auto_color_level"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 116
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

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_support_full_size"

    .line 58
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupportFullSize:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->initValue(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mModeSupport:Z

    const-string p1, "key_filter"

    .line 164
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mArcFilterSupport:Z

    const-string p1, "key_super_definition"

    .line 165
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

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

    const-string v0, "key_filter"

    .line 141
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mOverrideValueByFilter:Ljava/lang/String;

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method superDefinitionOff()Z
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->mSuperDefinitionSupport:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->isSupportFullSize()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "key_super_definition"

    .line 98
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "off"

    .line 102
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
