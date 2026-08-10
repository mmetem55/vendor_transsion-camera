.class Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocalItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->animateChangeImpl(Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

.field final synthetic val$changeInfo:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$changeInfo:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$changeInfo:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$changeInfo:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->this$0:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$8;->val$changeInfo:Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
