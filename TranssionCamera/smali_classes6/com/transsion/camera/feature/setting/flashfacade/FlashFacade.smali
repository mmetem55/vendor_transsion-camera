.class public Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FlashFacade.java"


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_flash_facade"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

.field private mDefaultValue:Ljava/lang/String;

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field private mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mIsProfessionalMode:Z

.field private mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mIsProfessionalMode:Z

    .line 382
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 74
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    .line 75
    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-direct {v1, p1, p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method private isWideSelfieAndAr(Ljava/lang/String;)Z
    .locals 0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.transsion.camera.feature.mode.armode.ARModeEntry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 6

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private updateFacadeValue(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateFacadeValue(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 251
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;Z)V

    :cond_0
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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mCaptureStateMonitor:Lcom/transsion/camera/feature/setting/flashfacade/monitor/CaptureStateMonitor;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_flash_facade"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 167
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public declared-synchronized getSettingValue()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "torch"

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 310
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->value()I

    move-result v0

    .line 313
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 315
    :cond_2
    :try_start_2
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingValue()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mIsProfessionalMode:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_professional"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_iso"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_exposure_time"

    invoke-virtual {v3, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isoNotAuto(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->exposureTimeNotAuto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 280
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v2, "off"

    .line 281
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    const-string v3, "torch"

    const-string v4, ","

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->support()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->minValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;->maxValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->support()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->support()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v0

    :cond_8
    return-object v1
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 83
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "ring_screen_light_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
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

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashDefaultValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, v1

    .line 126
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mDefaultValue:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowPower()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowTemperature()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v8, :cond_2

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getIsMovieModeFrontNoFlash()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 139
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    :goto_0
    move-object v0, p2

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v1

    .line 143
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_iso"

    invoke-virtual {p1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_exposure_time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->isoNotAuto(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->exposureTimeNotAuto(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    const-string p1, "torch"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, v0

    .line 151
    :goto_4
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key_macro"

    .line 327
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_pro_parameter"

    .line 328
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_stream_id"

    .line 329
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    .line 330
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    .line 331
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->onModeClosed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const-string p1, "key_professional"

    .line 322
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mIsProfessionalMode:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 10

    const-string v0, ","

    .line 182
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "torch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-eqz p1, :cond_0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashValue(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateLuminanceValue(I)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateLuminanceUi(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v6, p1

    .line 191
    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFacadeValue(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 198
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacadeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 197
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

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

    .line 205
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string v0, "key_ae_af_lock_state"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const-string p3, "on"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setForceLowlight(Z)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setAeLockTriggered(Z)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setAeLockTriggered(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_hdr"

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "key_video_enhance"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "key_video_enhance_yuv"

    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->isWideSelfieAndAr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 230
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    .line 217
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "off"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 221
    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->onValueChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_5
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->storeValue(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string p2, "key_pro_parameter"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 234
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public pause()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->pause()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    .line 265
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacadeRestriction;->getFlashRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->restoreToDefault()V

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->updateFacadeValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->resume()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->unInit()V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "ring_screen_light_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    return-void
.end method

.method public updateLuminanceInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mLuminanceInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/LuminanceInfo;

    return-void
.end method

.method public updateLuminanceUi(Ljava/lang/String;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 363
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "torch"

    .line 372
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "key_adjust_ui_state"

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 373
    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 375
    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method
