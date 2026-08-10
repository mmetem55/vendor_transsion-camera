.class Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ArCoreMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/ArCoreMainActivity$1;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1800(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 798
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterLongClick()V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1800(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 806
    iget-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 807
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$800(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterClick(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
