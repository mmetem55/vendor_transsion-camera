.class Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TemplateUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 810
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 818
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 819
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "animateShow onAnimationEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$2;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
