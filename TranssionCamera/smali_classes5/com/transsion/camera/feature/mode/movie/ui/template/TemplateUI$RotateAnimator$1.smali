.class Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TemplateUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->animateHide()V
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

    .line 771
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 774
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1000(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 782
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 783
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "animateHide onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 784
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1100(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    .line 785
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator$1;->this$1:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1200(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    return-void
.end method
