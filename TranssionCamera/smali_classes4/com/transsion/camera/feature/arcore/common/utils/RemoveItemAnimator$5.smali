.class Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoveItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
