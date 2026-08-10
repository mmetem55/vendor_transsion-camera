.class public Lcom/transsion/camera/feature/setting/flash/Flash;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Flash.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sDefaultLuminanceValue:I


# instance fields
.field private mFlashDefaultValue:Ljava/lang/String;

.field private mFlashLuminanceValue:I

.field private mFlashParameterConfigure:Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

.field private mIsSupportedLuminanceAdjust:Z

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPhotoModeSpecial:Z

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSupportedMaxLuminanceValue:I

.field private mSupportedMinLuminanceValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flash/Flash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mIsSupportedLuminanceAdjust:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mPhotoModeSpecial:Z

    return-void
.end method

.method private getDefaultLuminanceValue(Landroid/content/Context;)I
    .locals 3

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "flash_default_luminance_value"

    const-string v2, "integer"

    .line 250
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 6

    .line 156
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_flash"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

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

.method public getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_flash"

    return-object p0
.end method

.method protected getLuminanceValue()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/flash/Flash;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getPhotoModeSpecial()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mPhotoModeSpecial:Z

    return p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 113
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "torch"

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 231
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingValue()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupport()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mIsSupportedLuminanceAdjust:Z

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "torch"

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSupportedMinLuminanceValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSupportedMaxLuminanceValue:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flash/Flash;->getDefaultLuminanceValue(Landroid/content/Context;)I

    move-result p2

    sput p2, Lcom/transsion/camera/feature/setting/flash/Flash;->sDefaultLuminanceValue:I

    .line 54
    iput p2, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    const-string p2, "flash_default_value"

    .line 55
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashDefaultValue:Ljava/lang/String;

    return-void
.end method

.method protected initLuminanceSupportValue(ZII)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mIsSupportedLuminanceAdjust:Z

    .line 241
    iput p2, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSupportedMinLuminanceValue:I

    .line 242
    iput p3, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSupportedMaxLuminanceValue:I

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 19
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

    move-object/from16 v0, p0

    .line 60
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 61
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 62
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 64
    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Battery"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    .line 65
    iget-object v2, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "Temperature"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v2

    .line 66
    iget-object v3, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_exposure_time"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_iso"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-wide/16 v6, -0x1

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    const/4 v3, -0x1

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 71
    :goto_0
    iget-object v4, v0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashDefaultValue:Ljava/lang/String;

    const-string v6, "off"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_3
    move-object/from16 v4, p2

    :goto_1
    const/4 v7, 0x2

    if-eq v1, v7, :cond_6

    if-ne v2, v5, :cond_4

    goto :goto_3

    .line 79
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v5, :cond_5

    goto :goto_2

    .line 82
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v5, "key_flash"

    invoke-virtual {v1, v5, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 85
    iget-object v7, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v8, "key_flash"

    move-object v9, v4

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_2
    move-object v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    const-string v1, "off"

    .line 78
    iget-object v13, v0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v14, "key_flash"

    move-object v15, v1

    invoke-virtual/range {v13 .. v18}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    const-string v2, "torch"

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v1

    .line 91
    :goto_5
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_macro"

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_pro_parameter"

    .line 105
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_stream_id"

    .line 106
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_super_night"

    .line 107
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "key_video_fun_definition"

    .line 97
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mPhotoModeSpecial:Z

    .line 98
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 9

    const-string v0, ","

    .line 175
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "torch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/flash/ILuminanceConfig;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flash/ILuminanceConfig;->sendSettingChangeRequestSelf()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "key_flash"

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/Flash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFlashValueChanged] value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 185
    invoke-static {}, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 188
    invoke-static {}, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->getsScreenFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 187
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 190
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_2
    :goto_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 133
    sget-object v0, Lcom/transsion/camera/feature/setting/flash/Flash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_hdr"

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 138
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "off"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 142
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/flash/Flash;->onValueChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/flash/Flash;->storeValue(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string p2, "key_pro_parameter"

    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 151
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public pause()V
    .locals 1

    .line 236
    sget v0, Lcom/transsion/camera/feature/setting/flash/Flash;->sDefaultLuminanceValue:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/transsion/camera/feature/setting/flash/FlashRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 8

    .line 214
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v4, "off"

    .line 220
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "key_flash"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 223
    :cond_1
    sget v0, Lcom/transsion/camera/feature/setting/flash/Flash;->sDefaultLuminanceValue:I

    iput v0, p0, Lcom/transsion/camera/feature/setting/flash/Flash;->mFlashLuminanceValue:I

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
