.class Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;
.super Ljava/lang/Object;
.source "ARPhysicalKeyManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/ARKeyEventDetector$IKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterClick(Z)V

    :cond_0
    return-void
.end method

.method public onLongPress(I)V
    .locals 0

    return-void
.end method

.method public onLongPressCancel(I)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterUp()V

    :cond_0
    return-void
.end method

.method public onLongPressStart(I)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager$1;->this$0:Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;->access$000(Lcom/transsion/camera/feature/arcore/manager/ARPhysicalKeyManager;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterLongClick()V

    :cond_0
    return-void
.end method
