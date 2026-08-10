.class Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;
.super Landroid/os/Handler;
.source "StableMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/gsensor/StableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/gsensor/StableMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/gsensor/StableMonitor;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/gsensor/StableMonitor$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/gsensor/StableMonitor;

    if-nez p0, :cond_0

    return-void

    .line 205
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 p1, 0x66

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->access$300(Lcom/transsion/camera/gsensor/StableMonitor;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/gsensor/GyroData;

    invoke-static {p0, p1}, Lcom/transsion/camera/gsensor/StableMonitor;->access$200(Lcom/transsion/camera/gsensor/StableMonitor;Lcom/transsion/camera/gsensor/GyroData;)V

    :goto_0
    return-void
.end method
