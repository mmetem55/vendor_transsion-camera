.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;
.super Ljava/lang/Object;
.source "SlimBodyParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final FEATURES_ARRAY:[I

.field private static final IMMUTABLE_FEATURE_SIZE:I = 0xb

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

.field private mSupportFeatureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 26
    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->FEATURES_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

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
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getDefaultOption()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    const-string v2, "0"

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_slimbody_facebeauty_switch"

    invoke-virtual {v1, v4, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_slimbody_contrast"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    .line 76
    :goto_1
    iget-object v7, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getFaceBeautySlimbodySupport()Z

    move-result v7

    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v7, :cond_4

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v5

    .line 82
    :cond_4
    sget-object v7, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[configParameters], SlimBodyParam value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",featureSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",contrastState = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isNeedToOpen = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",contrastOff = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-eqz v2, :cond_a

    .line 85
    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object p0

    if-eqz v4, :cond_8

    if-eqz p0, :cond_c

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 90
    sget-object v1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->FEATURES_ARRAY:[I

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    aput v2, v1, v6

    .line 91
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    aput v2, v1, v5

    .line 92
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    .line 93
    iget v5, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    aput v5, v1, v2

    const/4 v2, 0x4

    .line 94
    iget v5, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    neg-int v5, v5

    aput v5, v1, v2

    const/4 v2, 0x5

    .line 95
    iget v5, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    aput v5, v1, v2

    .line 96
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    aput v2, v1, v0

    const/4 v0, 0x7

    .line 97
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    aput v2, v1, v0

    const/16 v0, 0x8

    .line 98
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    aput v2, v1, v0

    const/16 v0, 0x9

    .line 99
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    aput v2, v1, v0

    const/16 v0, 0xa

    .line 100
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    aput v2, v1, v0

    .line 101
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyLevels([I)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 103
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v4, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_5

    :cond_5
    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 105
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    .line 108
    :cond_6
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_5

    .line 106
    :cond_7
    :goto_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v4, [I

    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_5

    :cond_8
    if-eqz p0, :cond_9

    .line 112
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    if-nez p0, :cond_9

    .line 113
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    goto :goto_4

    .line 115
    :cond_9
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 117
    :goto_4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    goto :goto_5

    .line 120
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->isModeSupport()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 121
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    goto :goto_5

    .line 124
    :cond_b
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 125
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    :cond_c
    :goto_5
    return v6

    :cond_d
    :goto_6
    const/4 p0, -0x1

    return p0

    :array_0
    .array-data 4
        0x1
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x3e8
        0x1
    .end array-data
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

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
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->mSlimBodySetting:Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
