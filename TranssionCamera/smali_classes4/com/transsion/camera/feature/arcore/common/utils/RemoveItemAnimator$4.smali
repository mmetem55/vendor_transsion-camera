.class Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoveItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->setIsDeleting(Z)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
