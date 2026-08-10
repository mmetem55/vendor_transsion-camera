.class public Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "TranssionPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_tran_plugin"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideoPlugInValue:I

.field private mIsModeSupport:Z

.field private mNeedEnforcePluginEnable:Z

.field private mParameterConfigure:Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;

.field private final mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

.field private mTranPluginSupportInMode:Z

.field private mVideoEnhancePlugInValue:I

.field private mVideoFilterSupportVideoQuality:[Ljava/lang/String;

.field private mVideoQualityPlugInValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mNeedEnforcePluginEnable:Z

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    .line 40
    new-instance v1, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    .line 41
    iput v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Ljava/lang/String;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnablePlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    return p1
.end method

.method private noFeatureForceEnablePlugin(Ljava/lang/String;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "key_transsion_filter"

    .line 201
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updatePluginValue(Ljava/lang/String;)V
    .locals 4

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mNeedEnforcePluginEnable:Z

    const-string v1, "on"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    goto :goto_0

    .line 177
    :cond_0
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    :goto_0
    const-string p1, "key_video_enhance"

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    goto :goto_1

    .line 183
    :cond_1
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    :goto_1
    const-string p1, "key_video_quality"

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->noFeatureForceEnablePlugin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "8"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "11"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "6_60"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "8_60"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    :cond_2
    iput v2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    goto :goto_2

    .line 194
    :cond_3
    iput v3, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    :goto_2
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

    const-string p0, "key_tran_plugin"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mParameterConfigure:Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;

    return-object p0
.end method

.method public getPlugInValue()I
    .locals 3

    .line 223
    iget v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoEnhancePlugInValue:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq p0, v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 136
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 95
    new-instance p2, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mParameterConfigure:Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "transsion_plugin_enforce_enable"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mNeedEnforcePluginEnable:Z

    const-string p2, "video_filter_support_video_quality"

    .line 97
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_video_enhance"

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_video_quality"

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 103
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mNeedEnforcePluginEnable:Z

    if-nez p1, :cond_0

    const-string p1, "key_anti_video"

    .line 104
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->registerKeyToMonitor(Ljava/lang/String;)V

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

    .line 124
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string p1, "key_anti_video"

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->updatePluginValue(Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    return p0
.end method

.method public isTranPluginSupport()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 206
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    .line 208
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    const/4 p1, -0x1

    .line 209
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mAntiVideoPlugInValue:I

    .line 210
    iput p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mVideoQualityPlugInValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mIsModeSupport:Z

    const-string p1, "key_tran_plugin_mode_can_support"

    .line 167
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mTranPluginSupportInMode:Z

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "key_anti_video"

    const-string v0, "off"

    invoke-virtual {p1, p3, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->updatePluginValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_video_enhance"

    .line 113
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_video_quality"

    .line 114
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->mNeedEnforcePluginEnable:Z

    if-nez v0, :cond_0

    const-string v0, "key_anti_video"

    .line 117
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
