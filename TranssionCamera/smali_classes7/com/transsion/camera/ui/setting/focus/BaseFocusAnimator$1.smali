.class Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseFocusAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->access$000(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->access$100(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    iget v0, v0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    const v1, 0x3fc66666    # 1.55f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    iget v0, v0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;->val$view:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
