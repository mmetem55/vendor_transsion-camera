.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;
.super Ljava/lang/Object;
.source "ScreenBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_FLASH_END:I = 0x2

.field private static final MSG_SCREEN_FLASH_START:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBrighten:Z

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private mOriginalBrightness:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mOriginalBrightness:F

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->handleScreenFlashStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->handleScreenFlashEnd()V

    return-void
.end method

.method private getScreenBrightness(Landroid/app/Activity;)F
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    .line 97
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "window is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 101
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p0
.end method

.method private handleScreenFlashEnd()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 120
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->invalidContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 123
    :cond_1
    check-cast v0, Landroid/app/Activity;

    .line 125
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenFlashEnd mOriginalBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mOriginalBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mOriginalBrightness:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->setScreenBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method private handleScreenFlashStart()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 84
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->invalidContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 87
    :cond_1
    check-cast v0, Landroid/app/Activity;

    .line 89
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->getScreenBrightness(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mOriginalBrightness:F

    .line 90
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenFlashStart mOriginalBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mOriginalBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->setScreenBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method private invalidContext(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    .line 69
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 72
    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    .line 73
    sget-object p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is not instanceof Activity"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setScreenBrightness(Landroid/app/Activity;F)V
    .locals 0

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    .line 107
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "window is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 111
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method brightenScreen(Z)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mBrighten:Z

    if-eq v0, p1, :cond_1

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mBrighten:Z

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/ScreenBrightnessController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
