.class Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;
.super Landroid/os/Handler;
.source "ARPhysicalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterClick(Z)V

    :cond_2
    :goto_0
    return-void
.end method
