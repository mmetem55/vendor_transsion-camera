.class Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoveItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateChangeImpl(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

.field final synthetic val$changeInfo:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$transX:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;F)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$changeInfo:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput p5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$transX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$transX:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$changeInfo:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$changeInfo:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;->val$changeInfo:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
