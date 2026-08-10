.class public Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;
.super Landroid/view/View;
.source "GuidelinesView.java"


# instance fields
.field private mDrawBounds:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07026b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0600c5

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuidelinesView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 32
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    int-to-float v3, v1

    mul-float v4, v0, v3

    .line 36
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float v8, v6, v4

    iget v9, v5, Landroid/graphics/RectF;->top:F

    add-float v10, v6, v4

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v3, v2

    .line 40
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mDrawBounds:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    add-float v7, v5, v3

    iget v8, v4, Landroid/graphics/RectF;->right:F

    add-float v9, v5, v3

    iget-object v10, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
