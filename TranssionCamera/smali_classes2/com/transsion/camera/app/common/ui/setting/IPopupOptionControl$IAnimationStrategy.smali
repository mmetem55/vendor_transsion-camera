.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
.super Ljava/lang/Object;
.source "IPopupOptionControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAnimationStrategy"
.end annotation


# virtual methods
.method public abstract cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V
.end method

.method public abstract isAnimationRunning()Z
.end method

.method public abstract startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;)V
.end method
