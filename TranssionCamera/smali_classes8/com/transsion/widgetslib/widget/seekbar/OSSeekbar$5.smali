.class Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;
.super Ljava/lang/Object;
.source "OSSeekbar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1402(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1402(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1402(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1402(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)Z

    return-void
.end method
