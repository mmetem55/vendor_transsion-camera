.class Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarcodeAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$3;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 124
    sput p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    const/4 p1, 0x0

    .line 125
    sput-boolean p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$3;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
