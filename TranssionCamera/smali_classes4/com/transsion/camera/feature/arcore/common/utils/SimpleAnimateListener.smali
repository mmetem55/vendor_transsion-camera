.class public Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;
.super Ljava/lang/Object;
.source "SimpleAnimateListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

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
