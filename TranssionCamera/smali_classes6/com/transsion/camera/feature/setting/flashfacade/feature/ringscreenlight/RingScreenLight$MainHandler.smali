.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;
.super Landroid/os/Handler;
.source "RingScreenLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$MainHandler;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$000(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
