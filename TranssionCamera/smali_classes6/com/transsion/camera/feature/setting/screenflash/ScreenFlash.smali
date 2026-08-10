.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "ScreenFlash.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;


# static fields
.field private static final CLOSE_SCREEN_FLASH_DELAY:J = 0x7d0L

.field private static final SCREEN_FLASH_TIME_OUT:I = 0x1f40

.field private static final SETTING_KEY:Ljava/lang/String; = "key_screen_flash"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastTimestamp:J

.field private mOldState:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

.field private mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

.field private mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$1;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$2;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 217
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash$3;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateCaptureState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashRequiredState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateFlashState()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method private isAllowedChangeState(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 173
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    if-nez v1, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    return v0

    :cond_0
    if-nez p1, :cond_2

    .line 178
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    if-eqz v1, :cond_2

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    return v1

    .line 182
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mOldState:Z

    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mLastTimestamp:J

    :cond_3
    return v0
.end method

.method private isFlashOpen()Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashOpen()Z

    move-result p0

    return p0
.end method

.method private isFlashRequired()Z
    .locals 1

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 397
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isFlashRequired()Z

    move-result p0

    return p0
.end method

.method private isLedFlashSupport()Z
    .locals 1

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 389
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isLedFlashSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashFireSupport()Z
    .locals 1

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 405
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method private isScreenFlashSupport()Z
    .locals 1

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 381
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isScreenFlashSupport()Z

    move-result p0

    return p0
.end method

.method private updateCaptureState(Z)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 413
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateCaptureState(Z)V

    return-void
.end method

.method private updateFlashRequiredState(Z)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 421
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 424
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashRequiredState(Z)V

    return-void
.end method

.method private updateFlashState()V
    .locals 1

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez p0, :cond_0

    .line 429
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mScreenFlashParameterConfigure is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->updateFlashState()V

    return-void
.end method

.method private updateScreenFlashState(Z)V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 228
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen flash view is already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "show"

    goto :goto_0

    :cond_0
    const-string p1, "hide"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mShowState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashStateImpl(Z)V

    return-void
.end method

.method private updateScreenFlashStateImpl(Z)V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataCallback is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->isSupportFrontFlash()Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 252
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mScreenController"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashStart(Landroid/content/Context;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/setting/screenflash/IScreenController;->onScreenFlashEnd(Landroid/content/Context;)V

    :cond_2
    :goto_0
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

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_screen_flash"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 311
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerFactory;->getScreenController()Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    move-object v0, p2

    .line 305
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isFeatureOpen()Z
    .locals 1

    const-string v0, "key_screen_flash"

    .line 155
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 165
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isScreenFlashSupported()Z
    .locals 2

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_flash_support"

    .line 436
    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onFlashFire()V
    .locals 2

    .line 263
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFlashFire"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 342
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFlashValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->sendSettingChangeRequest()V

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    .line 330
    sget-object p3, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideValues] headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,currentValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " getValue()="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    return-void
.end method

.method public processOnPreview(Z)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "The screen flash does not need to open."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isAllowedChangeState(Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_3

    move p1, v1

    .line 213
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->onRingScreenLightChange(Z)V

    return-void
.end method

.method public processOnTakingPicture()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFeatureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 2

    .line 358
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 359
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[restoreToSupportedPlatformValue]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->isScreenFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 366
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 278
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->updateScreenFlashState(Z)V

    .line 281
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenController:Lcom/transsion/camera/feature/setting/screenflash/IScreenController;

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;->mScreenFlashParameterConfigure:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    if-eqz p0, :cond_0

    .line 283
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->mIsInitialize:Z

    :cond_0
    return-void
.end method
