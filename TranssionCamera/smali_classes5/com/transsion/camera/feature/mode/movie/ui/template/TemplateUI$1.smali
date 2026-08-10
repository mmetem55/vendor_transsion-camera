.class Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TemplateUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->doVisibilityAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Z)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private handleFinalState()V
    .locals 2

    .line 626
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->val$visible:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateSnapItem()V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->stopPlay()V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$300(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 634
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->resetProperty()V

    return-void
.end method

.method private resetProperty()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 615
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->handleFinalState()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 621
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 622
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->handleFinalState()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 607
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 608
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->val$visible:Z

    if-eqz p1, :cond_0

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$300(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
