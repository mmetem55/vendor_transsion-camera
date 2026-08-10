.class public Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "MuSlimBodySetting.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDefaultCloseSBState:Z

.field private mFaceAttributeSupport:Z

.field private mGenderValue:Ljava/lang/String;

.field private mIsModeSupport:Z

.field private mSlimBodyParams:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    const-string v0, "1"

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mGenderValue:Ljava/lang/String;

    return-void
.end method

.method private defaultSlimbodyValue()Ljava/lang/String;
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mDefaultCloseSBState:Z

    if-eqz p0, :cond_0

    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0

    :cond_0
    const-string p0, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    return-object p0
.end method

.method private setSlimBodyCustomDefaultValue()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_slimbody_custom"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mFaceAttributeSupport:Z

    const-string v1, "white"

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_gender_attribute_value"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mGenderValue:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mGenderValue:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "{\"bodySlim\":10,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    goto :goto_0

    :cond_1
    const-string v0, "{\"bodySlim\":20,\"buttPlump\":-48,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":8,\"waistSlim\":38}"

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mGenderValue:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "{\"bodySlim\":0,\"buttPlump\":15,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":20,\"legSlim\":10,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-25,\"waistSlim\":20}"

    goto :goto_0

    :cond_3
    const-string v0, "{\"bodySlim\":5,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":70,\"legLengthen\":25,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":15,\"waistSlim\":30}"

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "{\"bodySlim\":20,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":50,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    goto :goto_0

    :cond_5
    const-string v0, "{\"bodySlim\":5,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":20,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

.method public getDefaultSkin()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 82
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_mu_slimbody"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mSlimBodyParams:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mSlimBodyParams:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mSlimBodyParams:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 116
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 32
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mFaceAttributeSupport:Z

    .line 33
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeUpCloseSBState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mDefaultCloseSBState:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->defaultSlimbodyValue()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->setSlimBodyCustomDefaultValue()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodySetting;->mSlimBodyParams:Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuSlimBodyParam;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
