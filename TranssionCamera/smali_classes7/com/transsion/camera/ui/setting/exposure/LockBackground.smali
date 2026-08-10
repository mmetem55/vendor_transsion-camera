.class public Lcom/transsion/camera/ui/setting/exposure/LockBackground;
.super Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.source "LockBackground.java"


# instance fields
.field private final mInnerRadius:I

.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x7f0600b9

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mStrokeColor:I

    const p1, 0x7f0701d4

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/LockBackground;->mStrokeWidth:I

    const v1, 0x7f0701d3

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/LockBackground;->mInnerRadius:I

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getScale()F

    move-result v5

    .line 54
    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/LockBackground;->mStrokeWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 56
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float/2addr v0, v3

    .line 60
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/LockBackground;->mInnerRadius:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float p0, v2

    neg-float v0, v4

    .line 66
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_0
    return-void
.end method
