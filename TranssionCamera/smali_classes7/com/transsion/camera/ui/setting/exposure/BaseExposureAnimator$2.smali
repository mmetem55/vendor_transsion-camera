.class Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseExposureAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->startDarkenAnimate(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;Landroid/view/View;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;->this$0:Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
