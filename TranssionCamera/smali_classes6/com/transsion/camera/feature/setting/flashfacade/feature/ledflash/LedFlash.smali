.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "LedFlash.java"


# static fields
.field public static final SETTING_KEY:Ljava/lang/String; = "key_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

.field private final mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

.field private mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

.field private final mFrontDualFlashSupport:Z

.field private mHighLightSupport:Z

.field private mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mSuperFlashPlatformSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    .line 50
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    .line 51
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjustNewInteraction;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    :goto_0
    return-void
.end method

.method private initSupportedValues(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 133
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 135
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method configFlashStyleOneStage()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashStyleOneStage:Z

    return p0
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->onConfigStart()V

    .line 146
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    .line 149
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mHighLightSupport:Z

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setHighLightMode(I)V

    .line 151
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v1

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    return v1
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;
    .locals 1

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    return-object v0
.end method

.method getFlashStyle()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    return-object p0
.end method

.method getFrontDualFlashAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_flash"

    return-object p0
.end method

.method getLuminanceAdjust()Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 95
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 115
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->trackMode(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->pause()V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->restoreToDefault()V

    :cond_1
    :goto_0
    return-void
.end method

.method rearCameraSuperFlashSupport()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    return p0
.end method

.method public restoreToDefault()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->restoreToDefault()V

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->restoreToDefault()V

    return-void

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->restoreToDefault()V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->initSupportedValues(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFlashStyle:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlashStyle;->initFlashStyle(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 123
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportHighLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mHighLightSupport:Z

    .line 124
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->superFlashSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mSuperFlashPlatformSupport:Z

    .line 125
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mFrontDualFlashAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FrontDualFlashAdjust;->initFrontDualFlash(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mLuminanceAdjust:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LuminanceAdjust;->initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void
.end method

.method superFlashPlatformSupport()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mSuperFlashPlatformSupport:Z

    return p0
.end method

.method public updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->updateFrontDualFlashValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method public updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlashConfiguratorManager;->updateLuminanceValue(I)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    move-result-object p0

    return-object p0
.end method

.method videoMode()Z
    .locals 1

    .line 168
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/LedFlash;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
