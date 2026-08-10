.class Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;
.super Ljava/lang/Object;
.source "RingScreenLight.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ModuleTransferManager$OnRegisterCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$300(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;->access$202(Lcom/transsion/camera/feature/setting/flashfacade/feature/ringscreenlight/RingScreenLight;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
