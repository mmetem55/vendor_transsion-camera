.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->showZoomUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 664
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 670
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 671
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$700(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
