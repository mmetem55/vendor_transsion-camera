.class public Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "RemoveItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;,
        Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsDeleting:Z

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mIsDeleting:Z

    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 189
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$4;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 415
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    .line 416
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, v1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 418
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V
    .locals 1

    .line 425
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 428
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 435
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    .line 436
    iput-object v2, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 438
    iput-object v2, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 443
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 444
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 445
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 446
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 538
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 541
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 542
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 214
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 215
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 221
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$5;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 225
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 316
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0

    .line 318
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 319
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 320
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 321
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 325
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 326
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 327
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_1

    .line 330
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 331
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 332
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateChangeImpl(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V
    .locals 11

    .line 340
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v0

    .line 342
    :goto_0
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 343
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v0

    .line 353
    :goto_2
    new-instance v3, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "animateChangeImpl"

    invoke-direct {v3, v5}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "translationX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " translationX1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    new-instance v2, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v2, v5}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transX: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 357
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 358
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v5

    .line 357
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget v2, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->toX:I

    iget v3, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v10

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 361
    iget v2, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->toY:I

    iget v3, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 362
    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$7;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-eqz v1, :cond_5

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 384
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 386
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$9;

    move-object v5, v2

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$9;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$8;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroid/view/View;)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 409
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 249
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 251
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 252
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    neg-int p2, p2

    int-to-float p2, p2

    .line 260
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p2, p3

    int-to-float p2, p2

    .line 263
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    .line 270
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 283
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$6;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 681
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 657
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 658
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 452
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 457
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 458
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    .line 459
    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    .line 460
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 461
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 462
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 463
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 467
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    .line 468
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 469
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 471
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 473
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_5

    .line 477
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 478
    invoke-direct {p0, v5, p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 480
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 483
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_8

    .line 484
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_3
    if-ltz v6, :cond_7

    .line 486
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    .line 487
    iget-object v7, v7, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    .line 488
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 489
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 490
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 491
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 493
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 499
    :cond_8
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_5
    if-ltz v2, :cond_a

    .line 500
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 501
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 503
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 504
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 505
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 7

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 575
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    .line 576
    iget-object v3, v2, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 577
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 578
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 579
    iget-object v1, v2, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 580
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 584
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 585
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 586
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 590
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 591
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 592
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 593
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 597
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 600
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 606
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_6

    .line 609
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    .line 610
    iget-object v6, v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 611
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 612
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 613
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 614
    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 615
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 617
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 621
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    .line 623
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 624
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 626
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 627
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 628
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 629
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 630
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 631
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 632
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 636
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    .line 638
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 641
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->endChangeAnimationIfNecessary(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;)V

    .line 642
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 643
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 648
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 653
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public getIsDeleting()Z
    .locals 0

    .line 689
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mIsDeleting:Z

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 553
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public runPendingAnimations()V
    .locals 10

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 90
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "wltt"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 97
    new-instance v7, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v7, v6}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v6, "removeRun"

    invoke-static {v7, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 103
    new-instance v5, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v5, v6}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v7, "moveRun"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 108
    new-instance v7, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$1;

    invoke-direct {v7, p0, v5}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$1;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v5, v7, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 123
    :cond_2
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 128
    new-instance v5, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v5, v6}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v7, "changeRun"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 133
    new-instance v7, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$2;

    invoke-direct {v7, p0, v5}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$2;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_4

    .line 144
    new-instance v8, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v8, v6}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v9, "removePendingRun"

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 146
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v5, v7, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 148
    :cond_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 153
    new-instance v3, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-direct {v3, v6}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v5, "addRun"

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 158
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$3;-><init>(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 176
    :cond_6
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_4

    :cond_8
    move-wide v8, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 170
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_5

    :cond_9
    move-wide v0, v6

    :goto_5
    if-eqz v2, :cond_a

    .line 171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 172
    :cond_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 173
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 174
    invoke-static {p0, v5, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_b
    :goto_6
    return-void
.end method

.method public setIsDeleting(Z)V
    .locals 0

    .line 685
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->mIsDeleting:Z

    return-void
.end method
