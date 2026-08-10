.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;
.super Ljava/lang/Object;
.source "LetterSelectorLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 912
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 917
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
