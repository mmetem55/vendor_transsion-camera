.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;
.super Ljava/lang/Object;
.source "OSSwipeMenuLayout.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

.field final synthetic val$bottomMargin:I

.field final synthetic val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

.field final synthetic val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$topMargin:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;IILandroid/view/ViewGroup$MarginLayoutParams;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$topMargin:I

    iput p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$bottomMargin:I

    iput-object p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 1

    .line 1396
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1397
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1399
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    int-to-float p4, p4

    aput p4, p2, p3

    const/4 p3, 0x1

    const/4 p4, 0x0

    aput p4, p2, p3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$402(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1400
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1401
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1432
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1465
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, p4, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1466
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
