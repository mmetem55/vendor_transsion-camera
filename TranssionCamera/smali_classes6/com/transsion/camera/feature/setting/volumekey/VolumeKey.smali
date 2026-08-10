.class public Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VolumeKey.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentModeKey:Ljava/lang/String;

.field private mIsSlowMotionMode:Z

.field private mVolumeKeyParametersConfig:Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mIsSlowMotionMode:Z

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mCurrentModeKey:Ljava/lang/String;

    return-void
.end method

.method private updateModeParameter()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mCurrentModeKey:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mIsSlowMotionMode:Z

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

    const-string p0, "key_volume_key"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mVolumeKeyParametersConfig:Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mVolumeKeyParametersConfig:Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mVolumeKeyParametersConfig:Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 64
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

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 43
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public isSlowMotionMode()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mIsSlowMotionMode:Z

    return p0
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->updateModeParameter()V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->mCurrentModeKey:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->updateModeParameter()V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

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
