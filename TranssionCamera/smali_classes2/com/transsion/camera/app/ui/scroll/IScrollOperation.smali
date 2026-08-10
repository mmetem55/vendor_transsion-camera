.class public interface abstract Lcom/transsion/camera/app/ui/scroll/IScrollOperation;
.super Ljava/lang/Object;
.source "IScrollOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;
    }
.end annotation


# virtual methods
.method public abstract down(FF)V
.end method

.method public abstract pulling(FF)Z
.end method

.method public pushing(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startPulling()V
    .locals 0

    return-void
.end method

.method public startPushing()V
    .locals 0

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 0

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 0

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .locals 0

    .line 42
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public abstract stopPulling()Z
.end method

.method public stopPushing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
