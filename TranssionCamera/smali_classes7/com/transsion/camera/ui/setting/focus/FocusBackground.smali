.class public Lcom/transsion/camera/ui/setting/focus/FocusBackground;
.super Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.source "FocusBackground.java"


# instance fields
.field private final mInnerRadius:I

.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070210

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mStrokeWidth:I

    const v1, 0x7f07020e

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mInnerRadius:I

    .line 35
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getScale()F

    move-result v5

    .line 52
    iget v6, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mStrokeWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 54
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float/2addr v0, v3

    .line 58
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    iget v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mInnerRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mInnerRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;->mStrokeWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float v8, v0, v1

    neg-float v6, v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 65
    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    neg-float p0, v2

    neg-float v0, v4

    .line 68
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_0
    return-void
.end method
