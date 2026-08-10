.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SlimBodyVideoSetting.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsModeSupport:Z

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSlimBodyVideoParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

.field private mSwitchOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mIsModeSupport:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSwitchOn:Z

    return-void
.end method

.method private needVideoRestriction()Z
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_portrait"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    sget-object v3, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needVideoRestriction isVideoFaceBeauty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isVideoFaceBeauty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mSwitchOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSwitchOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", videoQuality = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", antiVideo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", portrait = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isVideoFaceBeauty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSwitchOn:Z

    if-eqz p0, :cond_2

    const-string p0, "_"

    .line 161
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const-string p0, "on"

    .line 162
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v4
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

    const-string p0, "key_video_slimbody_info"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSlimBodyVideoParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;-><init>(Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSlimBodyVideoParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSlimBodyVideoParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 86
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

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

    if-eqz p1, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mCheckedList:Ljava/util/List;

    .line 70
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_video_slimbody_facebeauty_switch"

    const-string v1, "-1"

    .line 76
    invoke-virtual {p1, v0, v1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const-string v1, "0"

    .line 79
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mIsModeSupport:Z

    return p0
.end method

.method public isSwitchOn()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSwitchOn:Z

    return p0
.end method

.method public isVideoFaceBeauty()Z
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_facebeauty"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_video_slimbody_custom"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSlimBodyVideoParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public turnOnSwitch(Z)V
    .locals 2

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSwitchOn:Z

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->needVideoRestriction()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoRestriction;->getSlimBodySettingRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "video_facebeauty_on"

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 95
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method
