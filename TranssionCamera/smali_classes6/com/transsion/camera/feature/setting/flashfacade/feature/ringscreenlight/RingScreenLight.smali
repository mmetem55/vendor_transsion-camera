.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;
.source "RingScreenLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_VALUE:I = 0x1

.field public static final SETTING_KEY:Ljava/lang/String; = "key_ring_screen_light"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_VALUE_DELAYED_TIME:J = 0x64L


# instance fields
.field private final mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

.field private mDelayValue:Ljava/lang/String;

.field private mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    .line 134
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    .line 78
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->handleUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private brightenScreen(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    const-string v0, "on"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->brightenScreen(Z)V

    return-void
.end method

.method private handleUpdateValue(Ljava/lang/String;)V
    .locals 3

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateValue value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateUI(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->sendSettingChangeRequestSelf()V

    return-void
.end method

.method private initRingScreenLight()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->restart()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "off"

    .line 225
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateUI(Ljava/lang/String;)V
    .locals 1

    const-string p0, "on"

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOffAal()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOnAal()V

    .line 201
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 232
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setRingScreenLight(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->isAeLockTriggered()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "Locked or unlocked AE."

    .line 235
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method protected bridge synthetic createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorManager;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;

    move-result-object p0

    return-object p0
.end method

.method protected createConfiguratorManager()Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;
    .locals 1

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLightConfiguratorManager;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_ring_screen_light"

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 103
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->init(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V

    return-void
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->onValueChanged(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->updateValue(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->pause()V

    const-string v0, "off"

    .line 120
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/aal/AalUtil;->turnOnAalForPause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->resume()V

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->brightenScreen(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupport:Z

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->initRingScreenLight()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->unInit()V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mBrightnessController:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->unInit()V

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mOnRegisterCompleteListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterCompleteListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;)V

    return-void
.end method

.method public updateValueImmediately(Ljava/lang/String;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;->mValue:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mIsUiRegisterCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 160
    :cond_2
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->mDelayValue:Ljava/lang/String;

    :goto_0
    return v1
.end method
