.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.super Ljava/lang/Object;
.source "ScreenFlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;


# static fields
.field private static final IGNORE_FRAME_COUNT:I = 0x6

.field private static final MAX_FRAME_COUNT:I = 0x2710

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mCachedFlashRequired:Z

.field private mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

.field private mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

.field public mIsInitialize:Z

.field private mLedFlashSupported:Z

.field private mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

.field private mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

.field private mScreenFlashFireSupported:Z

.field private mScreenFlashSupported:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsInitialize:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    .line 238
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$2;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    .line 98
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    .line 99
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 100
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashFireCallback:Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    return-object p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private configParametersImpl(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_flash"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    const-string v3, "auto"

    const-string v4, "off"

    const-string v5, "on"

    if-nez v2, :cond_4

    .line 169
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v4

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v5

    .line 182
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters ledFlashValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_3

    .line 185
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v0, v5

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    move-object v1, v0

    .line 194
    :cond_6
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 197
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters screenFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method private handleFlashRequiredState(Z)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "drop the flash state when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "do nothing if it isn\'t auto mode"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 270
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flash state is changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private isScreenFlashOn()Z
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_screen_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private resetCountNum()V
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCountNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private setConfigParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    const-string v0, "key_screen_flash"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters screenFlashValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setScreenFlashMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy;->setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->addCameraChangeListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->processStateChange(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 144
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "don\'t config parameters when it is capturing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 153
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setConfigParameters(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isFlashOpen()Z
    .locals 1

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "torch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isFlashRequired()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method isLedFlashSupport()Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    return p0
.end method

.method isScreenFlashFireSupport()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    return p0
.end method

.method isScreenFlashSupport()Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    return p0
.end method

.method public isSupportFrontFlash()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    return p0
.end method

.method public processStateChange(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 4

    .line 214
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCameraStateManager()Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isScreenFlashOn --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isCurrentModeSupport --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->isCurrentModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleTransferManager:isFrontCamera --->>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->isCurrentModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashStateCallback:Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 220
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->resetCountNum()V

    .line 221
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->restart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->setScreenFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V

    .line 224
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(ZZ)V

    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 119
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    .line 122
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenFlashFireSupported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlashFireSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLedFlashSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mLedFlashSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method updateCaptureState(Z)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCaptureState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashRequiredState(Z)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mFlashRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method updateFlashState()V
    .locals 3

    .line 298
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFlashState mCachedFlashRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mCachedFlashRequired:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->handleFlashRequiredState(Z)V

    return-void
.end method

.method public updateSpecifiedMode(Ljava/lang/String;Z)V
    .locals 1

    .line 309
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSpecifiedMode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
