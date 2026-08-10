.class Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;
.super Landroid/os/Handler;
.source "ARThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/ar/ARThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/ar/ARThreadManager;Landroid/os/Looper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/ar/ARThreadManager$1;->this$0:Lcom/transsion/camera/featurelibs/ar/ARThreadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 30
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "ARThreadManager"

    const-string v0, "handleMessage() failed"

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
