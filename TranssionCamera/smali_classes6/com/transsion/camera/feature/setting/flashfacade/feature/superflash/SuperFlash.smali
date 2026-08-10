.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "SuperFlash.java"


# static fields
.field private static final HUMAN_EFFECT_OFF:Ljava/lang/String; = "0"

.field public static final SETTING_KEY:Ljava/lang/String; = "key_super_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

.field private mModeSupport:Z

.field private mModeSupportHumanEffect:Z

.field private final mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 54
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    return-void
.end method

.method private humanEffectOn()Z
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "key_human_effect_index"

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 138
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private onConfigStart()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->humanEffectOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "humanEffectOn convert off"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "off"

    .line 126
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;->onConfigStart()V

    :goto_0
    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->onConfigStart()V

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperFlashValue(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isMainCameraBack()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isBackWideUnSupport()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isFrontCameraUnSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Force close sfl. "

    .line 114
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "off"

    .line 115
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperFlashValue(Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;
    .locals 1

    .line 60
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mConfiguratorManager:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorManager;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_super_flash"

    return-object p0
.end method

.method getScreenTorchStatus()Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 70
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public onModeClose(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeClose(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    const-string p1, "key_human_effect_index"

    .line 82
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupportHumanEffect:Z

    return-void
.end method

.method public ringScreenLightOn()Z
    .locals 1

    const-string v0, "key_ring_screen_light"

    .line 148
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 147
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public screenFlashOn()Z
    .locals 1

    const-string v0, "key_screen_flash"

    .line 143
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 142
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mModeSupport:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->superFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;->mScreenTorchStatus:Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/ScreenTorchStatus;->setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    return-void
.end method
