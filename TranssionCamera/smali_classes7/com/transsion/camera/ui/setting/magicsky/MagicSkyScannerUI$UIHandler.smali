.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
.super Landroid/os/Handler;
.source "MagicSkyScannerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 1

    .line 341
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    if-nez p0, :cond_0

    return-void

    .line 351
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 357
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V

    goto :goto_0

    .line 354
    :cond_4
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    :goto_0
    return-void
.end method
