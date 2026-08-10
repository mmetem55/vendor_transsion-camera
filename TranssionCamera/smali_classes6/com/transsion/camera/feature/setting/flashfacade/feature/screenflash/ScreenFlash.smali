.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "ScreenFlash.java"


# static fields
.field public static final SETTING_KEY:Ljava/lang/String; = "key_screen_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPhotoModeSpecial:Z

.field private mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashStatus(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean v1, v1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUsePlatformScreenFlash:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_flash_facade"

    .line 98
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setScreenFlashMode]  flashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;
    .locals 1

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlashConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 64
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 59
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method public onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onModeOpen(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const-string p1, "key_video_fun_definition"

    .line 81
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/screenflash/ScreenFlash;->mPhotoModeSpecial:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupport:Z

    if-eqz p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string p1, "on"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
