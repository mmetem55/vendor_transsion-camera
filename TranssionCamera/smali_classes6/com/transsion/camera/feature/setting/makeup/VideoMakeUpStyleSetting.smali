.class public Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VideoMakeUpStyleSetting.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mModeSupport:Z

.field private mParams:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method private postRestriction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p2

    .line 123
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 124
    iget p2, p2, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-nez p2, :cond_0

    iget v0, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    iget p1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-nez p1, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "on"

    goto :goto_0

    :cond_2
    const-string p1, "off"

    .line 129
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_3
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

    const-string p0, "key_video_makeup_style"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mParams:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;-><init>(Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mParams:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mParams:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 79
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 106
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

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

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

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 100
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

.method initMakeUp()V
    .locals 3

    const-string v0, "{\"intensityArray\":[0.0,0.0],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"\",\"styleNumber\":0}"

    .line 45
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "off"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
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

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const-string p1, "key_video_makeup"

    .line 63
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged, preValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->postRestriction(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->mParams:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleParams;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->postRestriction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpStyleSetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method
