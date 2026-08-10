.class public Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;
.super Ljava/lang/Object;
.source "MuSlimBodyParam.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final FEATURES_ARRAY:[I

.field private static final IMMUTABLE_FEATURE_SIZE:I = 0x7

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuSlimBodyParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 23
    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->FEATURES_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->isModeSupport()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 69
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 70
    :goto_1
    sget-object v4, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configParameters], SlimBodyParam value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",contrastState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",contrastOff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v5, 0x6

    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 76
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->FEATURES_ARRAY:[I

    iget v4, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    aput v4, v1, v3

    .line 77
    iget v4, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    aput v4, v1, v2

    .line 78
    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    .line 79
    iget v6, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    aput v6, v1, v2

    const/4 v2, 0x4

    .line 80
    iget v6, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    neg-int v6, v6

    aput v6, v1, v2

    const/4 v2, 0x5

    .line 81
    iget v6, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    aput v6, v1, v2

    .line 82
    iget v2, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    aput v2, v1, v5

    .line 83
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyLevels([I)V

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget v0, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 85
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v4, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_4

    :cond_4
    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 87
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    .line 90
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_4

    .line 88
    :cond_6
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    new-array p1, v4, [I

    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimbodyValue([I)V

    goto :goto_4

    .line 94
    :cond_7
    iget p0, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    if-nez p0, :cond_8

    .line 95
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    goto :goto_3

    .line 97
    :cond_8
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setSlimBodyMode(I)V

    .line 99
    :goto_3
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyMode(I)V

    :goto_4
    return v3

    nop

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

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":4,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":2,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "{\"bodySlim\":60,\"buttPlump\":60,\"chestPlump\":0,\"waistUpper\":0,\"headShrink\":60,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":10,\"waistSlim\":50}"

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->mSlimBodySetting:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
