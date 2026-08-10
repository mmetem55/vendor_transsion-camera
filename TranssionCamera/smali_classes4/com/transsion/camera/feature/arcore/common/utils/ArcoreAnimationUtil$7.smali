.class Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArcoreAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->startShakeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animator:Landroid/animation/ObjectAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$animator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 409
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 416
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;->val$animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method
