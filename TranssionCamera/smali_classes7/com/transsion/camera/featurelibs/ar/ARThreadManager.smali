.class public Lcom/transsion/camera/featurelibs/ar/ARThreadManager;
.super Ljava/lang/Object;
.source "ARThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ARThreadManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->thread:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v1, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;-><init>(Lcom/transsion/camera/featurelibs/ar/ARThreadManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/Runnable;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static unInit(Ljava/lang/Runnable;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    sget-object v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 59
    iput v1, v0, Landroid/os/Message;->what:I

    .line 60
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    sget-object p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$Holder;->instance:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager;->handler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
