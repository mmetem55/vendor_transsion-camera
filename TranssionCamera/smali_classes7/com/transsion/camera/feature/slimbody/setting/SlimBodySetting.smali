.class public Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "SlimBodySetting.java"


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

.field private mDefaultCloseSB:Z

.field private mDefaultOption:I

.field private mFaceAttributeSupport:Z

.field private mGenderValue:Ljava/lang/String;

.field private mIsFaceBeautySlimbodySupport:Z

.field private mIsModeSupport:Z

.field private mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    const-string v0, "1"

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mGenderValue:Ljava/lang/String;

    return-void
.end method

.method private defaultSlimbodyValue()Ljava/lang/String;
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x2

    .line 94
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_slimbody_latested_featureid"

    .line 93
    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    :cond_0
    if-ne v0, v1, :cond_1

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mFaceAttributeSupport:Z

    const-string v1, "white"

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_gender_attribute_value"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mGenderValue:Ljava/lang/String;

    .line 112
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_0
    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    return-object p0

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mGenderValue:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "{\"bodySlim\":0,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    return-object p0

    :cond_2
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":25,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    return-object p0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getDefaultSkin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    :cond_4
    const-string p0, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0
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

.method public getDefaultOption()Ljava/lang/String;
    .locals 0

    .line 59
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSkin()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 105
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceBeautySlimbodySupport()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_slimbody_info"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;-><init>(Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 135
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

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getBothSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    .line 36
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    .line 37
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getDefaultOption()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mFaceAttributeSupport:Z

    .line 39
    sget-object p1, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SlimBodyConfig mIsFaceBeautySlimbodySupport = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mDefaultCloseSB = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mDefaultOption = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    if-eqz p1, :cond_2

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mCheckedList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 76
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsFaceBeautySlimbodySupport:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultCloseSB:Z

    if-eqz p1, :cond_1

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object p1

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string p1, "key_slimbody_facebeauty_switch"

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mDefaultOption:I

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p2, p1, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 54
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget v0, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_custom"

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/SlimBodySetting;->mSlimBodyParamConfig:Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/SlimBodyParamConfig;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 146
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
