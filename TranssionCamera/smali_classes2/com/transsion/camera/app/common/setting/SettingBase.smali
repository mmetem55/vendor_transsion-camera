.class public abstract Lcom/transsion/camera/app/common/setting/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting;
.implements Lcom/transsion/camera/app/common/setting/ISetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;,
        Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;
    }
.end annotation


# static fields
.field protected static final SCREEN_POCKET_KEY_PREFIX:Ljava/lang/String; = "screen_pocket_"


# instance fields
.field protected mDefaultValue:Ljava/lang/String;

.field private mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

.field protected mScreenFormType:I

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field protected mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mSupportedEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPlatformValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;

.field private mValueInDataStore:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    .line 34
    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mScreenFormType:I

    return-void
.end method

.method private restoreValue()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private switchToOverridesValue(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V
    .locals 2

    if-nez p1, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreValue()V

    return-void

    .line 405
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 411
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .locals 0

    return-void
.end method

.method protected cacheValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getKeyForScreenPocket()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getCameraFacing()Ljava/lang/String;
    .locals 0

    .line 467
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentStreamIds()[I
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStreamIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getEntryValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 233
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGlobalScope()Ljava/lang/String;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getISetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    return-object p0
.end method

.method protected getKeyForScreenPocket()Ljava/lang/String;
    .locals 2

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_pocket_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;
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
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getSupportedPlatformValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 238
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getValueForScreenPocket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getKeyForScreenPocket()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected goingToChangeValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 148
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 149
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 150
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 151
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method protected abstract initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public isModeSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVipMode()Z
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->isVipMode()Z

    move-result p0

    return p0
.end method

.method public onCameraClosedBefore()V
    .locals 0

    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->access$100(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onModeUpdate([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .locals 0

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

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 254
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->getFirst()Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->switchToOverridesValue(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V

    goto :goto_1

    .line 261
    :cond_1
    new-instance v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase$1;)V

    .line 262
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2

    .line 270
    monitor-exit p0

    return-void

    .line 276
    :cond_2
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_3

    .line 277
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 280
    :cond_3
    iput-object p2, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    .line 281
    iput-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->add(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V

    .line 284
    iget-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 285
    iget-object p1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p2, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_4

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->get(I)Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->entryValues:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 295
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized removeOverride(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->remove(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 3

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mOverridesList:Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->access$300(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 363
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreValue()V

    .line 365
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 365
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public screenPocket()Z
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->screenPocket()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setEntryValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 373
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setScreenFromType(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mScreenFormType:I

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method public declared-synchronized setSupportedEntryValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSupportedPlatformValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 389
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSupportedPlatformValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 324
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 326
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 328
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 326
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValueOnly(Ljava/lang/String;)V
    .locals 0

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValueInDataStore:Ljava/lang/String;

    .line 336
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->goingToChangeValue(Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mValue:Ljava/lang/String;

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public turnOnSwitch(Z)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateModeDeviceState(I)V
    .locals 0

    return-void
.end method
