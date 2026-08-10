.class Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseExposureAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->startShowLockAnimate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

.field final synthetic val$seekBar:Landroid/view/View;

.field final synthetic val$showSeekBar:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;ZLandroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->val$showSeekBar:Z

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->val$seekBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 67
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->val$showSeekBar:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->val$seekBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;->val$seekBar:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->access$000(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;Landroid/view/View;)V

    :cond_0
    return-void
.end method
