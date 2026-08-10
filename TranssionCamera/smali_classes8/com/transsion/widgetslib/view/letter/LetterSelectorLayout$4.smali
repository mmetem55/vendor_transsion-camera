.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;
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

    .line 896
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 906
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 907
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 899
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 900
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 901
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
