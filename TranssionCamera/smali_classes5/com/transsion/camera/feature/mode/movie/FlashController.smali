.class public Lcom/transsion/camera/feature/mode/movie/FlashController;
.super Ljava/lang/Object;
.source "FlashController.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFlash:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$a2bbWKqio00__OJn9eiv8_B2U8o(Lcom/transsion/camera/feature/mode/movie/FlashController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/FlashController;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/FlashController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/FlashController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/FlashController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/FlashController$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/FlashController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private getFlashKey()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash_facade"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "key_flash"

    return-object p0
.end method

.method private initFlashSetting()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of v1, v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->getFlashKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mFlash:Lcom/transsion/camera/app/common/setting/ISetting;

    :cond_0
    return-void
.end method

.method private isPeriscopeCamera()Z
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/FlashController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSettingChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_flash"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_flash_facade"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateFlashValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method flashOnValue()Ljava/lang/String;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->getFlashKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "torch"

    .line 100
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "ringscreenlight"

    .line 103
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method init()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->initFlashSetting()V

    const-string v0, "key_flash"

    .line 49
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_flash_facade"

    .line 50
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public isFlashOn(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "torch"

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "ringscreenlight"

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onSettingReady()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->getFlashKey()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 81
    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->updateFlashValue(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->isPeriscopeCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->flashOnValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->showFlashView()V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->hideFlashView()V

    :goto_1
    return-void
.end method

.method public turnOff()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mFlash:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    const-string v0, "off"

    .line 138
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public turnOn()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->flashOnValue()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mFlash:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "off"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 128
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "something maybe wrong, this should not happen!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/FlashController;->mFlash:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_1

    .line 132
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method unInit()V
    .locals 1

    const-string v0, "key_flash"

    .line 110
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_flash_facade"

    .line 111
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/FlashController;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method
