.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;
.super Ljava/lang/Object;
.source "SlimBodyVideoParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final FEATURES_ARRAY:[I

.field private static final IMMUTABLE_FEATURE_SIZE:I = 0xb

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

.field private mSupportFeatureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 26
    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->FEATURES_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_video_slimbody_facebeauty_switch"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_video_slimbody_contrast"

    invoke-virtual {v0, v4, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "-1"

    move-object v0, v1

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    .line 76
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v6

    .line 79
    :goto_2
    sget-object v7, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[configParameters], SlimBodyParam value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",featureSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",contrastState = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isNeedToOpen = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",contrastOff = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoFaceBeauty = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    .line 81
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isVideoFaceBeauty()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needClose = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isSwitchOn()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isVideoFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->isSwitchOn()Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v6

    :cond_4
    if-eqz v1, :cond_6

    const/4 p0, 0x6

    if-eqz v4, :cond_5

    .line 91
    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 95
    sget-object v1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->FEATURES_ARRAY:[I

    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    aput v2, v1, v6

    .line 96
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    aput v2, v1, v5

    const/4 v2, 0x2

    .line 97
    iget v3, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 98
    iget v3, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 99
    iget v3, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    neg-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    .line 100
    iget v3, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    aput v3, v1, v2

    .line 101
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    aput v2, v1, p0

    const/4 p0, 0x7

    .line 102
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    aput v2, v1, p0

    const/16 p0, 0x8

    .line 103
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    aput v2, v1, p0

    const/16 p0, 0x9

    .line 104
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    aput v2, v1, p0

    const/16 p0, 0xa

    .line 105
    iget v2, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    aput v2, v1, p0

    .line 106
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyLevels([I)V

    .line 107
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    iget p1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    goto :goto_3

    .line 114
    :cond_6
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    :cond_7
    :goto_3
    return v6
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":4,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":2,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoParamConfig;->mSlimBodyVideoSetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyVideoSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
