.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecorderUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->visibilityAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

.field final synthetic val$alpha:F

.field final synthetic val$translationY:F

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;ZFF)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$visible:Z

    iput p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$alpha:F

    iput p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$translationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private applyFinalProperty()V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$translationY:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private handleFinalState()V
    .locals 2

    .line 874
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$visible:Z

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->applyFinalProperty()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 869
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 870
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->handleFinalState()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 863
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 864
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->handleFinalState()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 855
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 856
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->val$visible:Z

    if-eqz p1, :cond_0

    .line 857
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$7;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1400(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
