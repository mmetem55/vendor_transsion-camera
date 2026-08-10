.class Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;
.super Ljava/lang/Object;
.source "BarcodeAnimationUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
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

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->bottom:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mMarinBottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewWidth:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewWidth:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->bottom:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mMarinBottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/high16 v0, 0x42700000    # 60.0f

    if-gez p1, :cond_0

    .line 103
    sget-boolean p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    if-nez p1, :cond_0

    .line 104
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, -0x3df40000    # -35.0f

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->access$000(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 106
    :cond_0
    sget-boolean p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    .line 107
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-static {v1, p1, v0, v2, v3}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->access$000(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const p1, 0x3f4ccccd    # 0.8f

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 110
    sput-boolean p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mAlaphChange:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewLB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRT:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;->val$imageViewRB:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->access$000(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method
