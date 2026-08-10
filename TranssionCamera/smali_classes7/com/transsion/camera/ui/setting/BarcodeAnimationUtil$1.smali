.class Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarcodeAnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->endBoxAnimation(FFLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imageViewLB:Landroid/widget/ImageView;

.field final synthetic val$imageViewLT:Landroid/widget/ImageView;

.field final synthetic val$imageViewRB:Landroid/widget/ImageView;

.field final synthetic val$imageViewRT:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLT:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLB:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRT:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLT:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLT:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewLB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRT:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
