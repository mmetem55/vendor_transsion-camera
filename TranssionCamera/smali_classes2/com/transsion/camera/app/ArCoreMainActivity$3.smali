.class Lcom/transsion/camera/app/ArCoreMainActivity$3;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;->onCreateTasks(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$3;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 421
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$3;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$3;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterUp()V

    .line 429
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$3;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$900(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method
