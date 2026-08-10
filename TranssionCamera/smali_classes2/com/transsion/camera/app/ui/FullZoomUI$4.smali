.class Lcom/transsion/camera/app/ui/FullZoomUI$4;
.super Ljava/lang/Object;
.source "FullZoomUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->translateWideCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;Z)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 509
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    if-eqz p1, :cond_0

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 502
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->val$fadeOut:Z

    if-eqz p1, :cond_0

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$4;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
