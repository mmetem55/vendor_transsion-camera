.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LetterSelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 876
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 877
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 878
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 869
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 870
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    :cond_0
    return-void
.end method
