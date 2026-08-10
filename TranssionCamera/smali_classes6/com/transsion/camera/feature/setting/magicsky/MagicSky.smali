.class public Lcom/transsion/camera/feature/setting/magicsky/MagicSky;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "MagicSky.java"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mIsModeSupport:Z

.field private mMagicSkyParameterConfigure:Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 21
    new-instance v0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;-><init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mIsModeSupport:Z

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;-><init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mMagicSkyParameterConfigure:Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

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

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_magic_sky_type"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getmMagicSkyParameterConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 59
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

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mIsModeSupport:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getmMagicSkyParameterConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mMagicSkyParameterConfigure:Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mMagicSkyParameterConfigure:Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mMagicSkyParameterConfigure:Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
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

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_magic_sky_detection"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
