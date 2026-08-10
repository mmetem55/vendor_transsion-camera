.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;
.super Ljava/lang/Object;
.source "OSSwipeMenuLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1455
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1456
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    .line 1458
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1459
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    :cond_1
    const/4 p1, 0x0

    .line 1461
    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    .line 1462
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1443
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1444
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    .line 1446
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1447
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    iget-object p1, p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;->onAnimationEnd(I)V

    :cond_1
    const/4 p1, 0x0

    .line 1449
    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    .line 1450
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$2;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
