.class Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;
.super Ljava/lang/Object;
.source "ArcoreAnimationUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->translationYUpAnimation(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;FFFFFFJLandroid/animation/Animator$AnimatorListener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/Animator$AnimatorListener;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;->val$animatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
