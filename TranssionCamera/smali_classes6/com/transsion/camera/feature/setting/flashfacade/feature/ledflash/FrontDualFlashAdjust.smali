.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;
.super Ljava/lang/Object;
.source "FrontDualFlashAdjust.java"


# static fields
.field private static final FRONT_DUAL_FLASH_AUTO_TEMP:I = 0x0

.field private static final FRONT_DUAL_FLASH_COLOR_TEMP:Ljava/lang/String; = "front_dual_flash_color_temp"

.field private static final FRONT_DUAL_FLASH_DEFAULT_TEMP:I = 0x2

.field private static final FRONT_DUAL_FLASH_HIGH_STRENGTH:I = 0x2

.field private static final FRONT_DUAL_FLASH_STRENGTH_MODE:Ljava/lang/String; = "front_dual_flash_strength_mode"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFlashAutoMode:Z

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field private final mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFrontDualFlashSupported:Z

.field private mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

.field private mValueSupportAdjust:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    .line 46
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashColorTemp:I

    .line 47
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashStrengthMode:I

    invoke-direct {p2, v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 48
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    iget p2, p2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-direct {p1, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    return-void
.end method


# virtual methods
.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 4

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontDualFlashSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mValueSupportAdjust: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFlashAutoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    if-nez v1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    if-eqz v1, :cond_2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mLedFlash:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->videoMode()Z

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_1

    const-string p0, "video mode flash auto is not support front dual flash adjust, return"

    .line 80
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 85
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 86
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    .line 89
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    if-nez v1, :cond_3

    const/4 p0, -0x1

    .line 90
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 91
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    return-void

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 95
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters mFrontDualFlashTemValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFrontDualFlashTemLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashColorTemp(I)V

    .line 99
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFrontDualFlashStrengthMode(I)V

    .line 100
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontDualFlashColorTemp(I)V

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontDualFlashStrengthMode(I)V

    return-void
.end method

.method initFrontDualFlash(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->reset()V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateSupport(Z)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getISetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 61
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->frontDualFlashSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateSupport(Z)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_dual_flash_color_temp"

    invoke-virtual {p1, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_dual_flash_strength_mode"

    invoke-virtual {v1, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setValue(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFrontDualFlash mFrontDualFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public restoreToDefault()V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDefaultFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFlashAutoMode(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashAutoMode:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, ","

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->updateFrontDualFlashInfo(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v2, v2, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_dual_flash_color_temp"

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "front_dual_flash_strength_mode"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public valueSupportAdjust(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->mValueSupportAdjust:Z

    return-void
.end method
