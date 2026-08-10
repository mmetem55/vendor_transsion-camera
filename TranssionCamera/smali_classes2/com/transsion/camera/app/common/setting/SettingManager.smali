.class public Lcom/transsion/camera/app/common/setting/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;
    }
.end annotation


# instance fields
.field private mBatteryStatus:I

.field private final mBindModeEventLock:Ljava/lang/Object;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

.field private mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

.field private mInitialized:Z

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mModeKey:Ljava/lang/String;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPendingBindModeEvent:Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;

.field private mRealCameraId:Ljava/lang/String;

.field private final mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

.field protected mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

.field private mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

.field private final mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStreamIds:[I

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTemperatureStatus:I


# direct methods
.method public static synthetic $r8$lambda$DL9mbByq9tETckp8JsaUSNFmRTg([Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$updateModeSettings$1([Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MDspDV9C87hwjeUCZZDOWp8oHfY(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager;->lambda$changeCameraId$0(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    .line 45
    new-instance v1, Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 46
    new-instance v1, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;-><init>(Lcom/transsion/camera/app/common/setting/SettingTable;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 68
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    return-void
.end method

.method private getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    sget-object v1, Lcom/transsion/camera/app/common/setting/SettingManager$1;->$SwitchMap$com$transsion$camera$app$common$mode$ICameraMode$ModeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    sget-object p1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getSettingListByType(Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isCameraIdDifferent(Ljava/lang/String;)Z
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 289
    :goto_0
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 284
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0, p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private isSameStreamId([I[I)Z
    .locals 4

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_2

    .line 369
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v2, p0

    move v1, v0

    .line 373
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_4

    if-eqz v2, :cond_3

    .line 374
    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_3

    move v2, p0

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v0
.end method

.method private static synthetic lambda$changeCameraId$0(Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 0

    .line 301
    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateModeSettings$1([Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V
    .locals 0

    .line 307
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeUpdate([Ljava/lang/String;)V

    return-void
.end method

.method private updateModeSettings([Ljava/lang/String;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[updateModeSettings]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p0

    .line 307
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public beforeUnInit()V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p0

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 194
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->beforeUnInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    const-string p3, "1"

    .line 317
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 319
    :cond_0
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 321
    :goto_0
    iget-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter p3

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 326
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 327
    invoke-interface {v0, p1, p2, p4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_2
    :goto_2
    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;

    invoke-direct {v0, p1, p2, p4}, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvent:Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;

    .line 330
    :cond_3
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public changeCameraId(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeCameraId] cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 296
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 300
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 826
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 828
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I
    .locals 9

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "configParameters"

    .line 763
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 766
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 768
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v1

    .line 771
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 772
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 774
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 775
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 778
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 782
    :cond_4
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 784
    invoke-interface {v5, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v5

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 787
    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configParameters], need restartpreview:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    or-int/2addr v3, v5

    goto :goto_0

    .line 791
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return v3
.end method

.method public configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParametersByKey]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 800
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 806
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 811
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p2

    .line 813
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 815
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result v1

    .line 817
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParametersByKey], need restartpreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public createAllSettings()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createAllSettings]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "createAllSettings"

    .line 122
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    const-class v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/FeatureProvider;->createFeatures(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], there is no setting created, so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 133
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v4, v2

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 135
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], setting has created, so return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    .line 153
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[createAllSettings] after activeAccess"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v2, :cond_6

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings], access active failed, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 159
    :cond_6
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v2, :cond_7

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[createAllSettings], setting is uninitialized, return"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 162
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 166
    :cond_7
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvent:Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 169
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    .line 172
    :cond_9
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-interface {v4, v5, p0, v6}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 173
    iget v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setScreenFromType(I)V

    .line 174
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/setting/SettingTable;->add(Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    .line 175
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    if-eqz v3, :cond_8

    .line 177
    iget-object v5, v3, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeKey:Ljava/lang/String;

    iget-object v6, v3, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object v7, v3, Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;->modeFeatures:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_a
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[createAllSettings] after init and onModeOpened"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->classify()V

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createAllSettings]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :catchall_0
    move-exception p0

    .line 180
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 856
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 858
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 471
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method public getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    return-object p0
.end method

.method public getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    return-object p0
.end method

.method public getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    .locals 0

    return-object p0
.end method

.method public getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method public getStreamIds()[I
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    return-object p0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .locals 3

    .line 84
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[init]+"

    .line 85
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "[init], this method should be invoked in main thread"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    iput-object p4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    const-string p1, "1"

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 97
    :goto_0
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 99
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 100
    new-instance p1, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[init]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isVipMode()Z
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 865
    iput p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    .line 866
    iput p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return-void
.end method

.method public onCameraClosedBefore()V
    .locals 1

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 222
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onCameraClosedBefore()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureEnded()V
    .locals 5

    .line 638
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureEnded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    .line 643
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 645
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 647
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 652
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 653
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 656
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 657
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    goto :goto_0

    .line 660
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 662
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 5

    .line 609
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    .line 614
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 618
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 623
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 624
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 627
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 628
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureStart()V

    goto :goto_0

    .line 631
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 633
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 5

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStarted], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 522
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    .line 527
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 529
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 536
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 539
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 540
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStarted()V

    goto :goto_0

    .line 543
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 545
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 508
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 509
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 512
    :cond_3
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 513
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStopped()V

    goto :goto_0

    .line 516
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public onTakePictureEnded(Z)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 551
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onTakePictureEnded"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    .line 556
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 558
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 565
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 566
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 569
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 570
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureEnd(Z)V

    goto :goto_0

    .line 573
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 575
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onTakePictureStarted()V
    .locals 5

    .line 580
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takePictureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 589
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    .line 594
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 595
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 598
    :cond_3
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 599
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->takePictureStart()V

    goto :goto_0

    .line 602
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 604
    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public pause()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 236
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->pause()V

    goto :goto_0

    .line 241
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[pause]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postDefaultRestriction(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRestriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatchRestoreDefault(Ljava/util/List;)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 5

    .line 409
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[postRestriction], headerKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", headerValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " post relation. mInitialized:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v2, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postRestriction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v2

    .line 418
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 422
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    if-eqz v3, :cond_2

    .line 423
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;->dispatchStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->dispatch(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    if-eqz p1, :cond_3

    .line 427
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;->dispatchDone(Ljava/lang/String;)V

    .line 429
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public queryEntryValues(Ljava/lang/String;)Ljava/util/List;
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

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 393
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryExtStatus(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Battery"

    .line 476
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mBatteryStatus:I

    return p0

    :cond_0
    const-string v0, "Temperature"

    .line 478
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 479
    iget p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTemperatureStatus:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
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

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 402
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 384
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public resume()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 255
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->resume()V

    goto :goto_0

    .line 260
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[resume]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public screenPocket()Z
    .locals 1

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCameraCapabilities(Ljava/lang/String;Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 705
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "setCameraCapabilities"

    .line 708
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->activeAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingManager;->screenPocket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 717
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mRealCameraId:Ljava/lang/String;

    const-string p1, "1"

    .line 718
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 720
    :cond_2
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    .line 722
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->getSettingByModeType(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object p1

    .line 723
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 724
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 725
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 728
    :cond_3
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    goto :goto_1

    .line 730
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getSettingsKeepSavingTime(I)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 731
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 732
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object v2

    .line 733
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 735
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 739
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 740
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 743
    :cond_7
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->postRestrictionAfterInitialized()V

    goto :goto_4

    .line 745
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->recycleAccess(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V

    .line 746
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setCameraCapabilities]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public setDispatchListener(Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mDisPatchListener:Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;

    return-void
.end method

.method public setFeatureProvider(Lcom/transsion/camera/app/common/provider/FeatureProvider;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mFeatureProvider:Lcom/transsion/camera/app/common/provider/FeatureProvider;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "[unInit], this method should be invoked in main thread"

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mInitialized:Z

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->unInit()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->startControl()V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 211
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->unInit()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->removeAll()V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingAccessManager:Lcom/transsion/camera/app/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager;->stopControl()V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[unInit]-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unbindMode(Ljava/lang/String;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unbindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 337
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->onModeClosed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mPendingBindModeEvent:Lcom/transsion/camera/app/common/setting/SettingManager$BindModeEvent;

    return-void
.end method

.method public updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 3

    .line 267
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mContext:Landroid/content/Context;

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->isDifferentMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mModeKey:Ljava/lang/String;

    .line 271
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object p2

    .line 272
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingManager;->unbindMode(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->bindMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->isCameraIdDifferent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 275
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->changeCameraId(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingManager;->updateModeSettings([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method

.method public updateScreenFormType(I)V
    .locals 2

    .line 109
    iput p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 112
    iget v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mScreenFormType:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->setScreenFromType(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateStreamIds([I)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->isSameStreamId([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStreamIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager;->mStreamIds:[I

    :cond_0
    return-void
.end method
