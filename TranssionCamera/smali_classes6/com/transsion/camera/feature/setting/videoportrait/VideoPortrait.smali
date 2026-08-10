.class public Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VideoPortrait.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private DEFAULTVALUE:Ljava/lang/String;

.field private mDefaultVideoQualityValue:Ljava/lang/String;

.field private mMaxSupportSize:Ljava/lang/String;

.field private mPortraitSupportVideoQuality:[Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mUseGlobalStore:Z

.field private mVideoPortraitParameterConfigure:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mUseGlobalStore:Z

    const-string v0, "off"

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->DEFAULTVALUE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    return-void
.end method

.method private setCheckValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getSupport()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->DEFAULTVALUE:Ljava/lang/String;

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-object p1
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->setCheckValues(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_video_portrait"

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->cacheValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .locals 5

    .line 224
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->beforeUnInit()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "null"

    if-eqz v0, :cond_0

    .line 226
    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_video_portrait"

    const-string v4, "off"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_video_quality"

    const-string v4, "value_change_off"

    .line 227
    invoke-virtual {v2, v3, v4, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 226
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string v0, "key_quality_recover_default"

    .line 230
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
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

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_portrait"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mVideoPortraitParameterConfigure:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mVideoPortraitParameterConfigure:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mVideoPortraitParameterConfigure:Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 92
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mUseGlobalStore:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

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

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoPortraitMaxSizeSupport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "0"

    .line 61
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "video_portrait_switch_use_global_store"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mUseGlobalStore:Z

    const-string p2, "portrait_support_video_quality"

    .line 63
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->updateDefaultQualityValue()V

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

    .line 69
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->setCheckValues(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public isQualifiedToRecoverQuality()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->compareQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 176
    sget-object v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVideoPortraitValueChanged] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mMaxSupportSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->setCheckValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_video_quality"

    .line 178
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortraitRestriction;->getRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->updateDefaultQualityValue()V

    .line 181
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 182
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "null"

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "off"

    .line 185
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "value_change_off"

    .line 186
    invoke-virtual {v3, v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "on"

    .line 187
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value_change_on"

    .line 188
    invoke-virtual {v3, v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_portrait"

    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->cacheValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 123
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_video_quality"

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v4, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_video_portrait"

    invoke-direct {v4, v5, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "override_values_off"

    const-string v6, "null"

    .line 125
    invoke-virtual {v4, v3, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v4

    .line 124
    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 127
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_a

    .line 128
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->storeValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "key_anti_video"

    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_facebeauty"

    .line 135
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_360_video_hdr"

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_dol_video_hdr"

    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_super_night"

    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_enhance"

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_super_night_yuv"

    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_enhance_yuv"

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_effect"

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "key_video_makeup"

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "wide_camera"

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "on"

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    const-string v2, "front_wide_camera"

    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "key_macro"

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-eqz p2, :cond_7

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 158
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->storeValue(Ljava/lang/String;)V

    .line 161
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_8
    :goto_0
    if-eqz p2, :cond_a

    .line 144
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 148
    :cond_9
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->storeValue(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p1, :cond_a

    .line 150
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 164
    :cond_a
    :goto_1
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x64

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_b
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->isQualifiedToRecoverQuality()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_quality_recover_default"

    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 0

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

.method public updateDefaultQualityValue()V
    .locals 5

    const/4 v0, 0x5

    .line 248
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "_"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 252
    sget-object v2, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onValueChanged mMaxSupportSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", maxPortraitSupportVideoQuality = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mMaxSupportSize:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    :cond_0
    if-le v0, v1, :cond_1

    .line 258
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportrait/VideoPortrait;->mDefaultVideoQualityValue:Ljava/lang/String;

    :cond_1
    return-void
.end method
