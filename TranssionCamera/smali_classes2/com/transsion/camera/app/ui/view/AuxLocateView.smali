.class public Lcom/transsion/camera/app/ui/view/AuxLocateView;
.super Landroid/view/View;
.source "AuxLocateView.java"


# instance fields
.field private dashPathEffect:Landroid/graphics/DashPathEffect;

.field private mAuxPreviewMargin:I

.field private final mCollapseDrawable:Landroid/graphics/drawable/Drawable;

.field private mLocateRect:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRootHeight:I

.field private mRootWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/AuxLocateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    const/4 p2, 0x6

    .line 21
    iput p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mAuxPreviewMargin:I

    .line 22
    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->dashPathEffect:Landroid/graphics/DashPathEffect;

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->initPaint()V

    const p2, 0x7f080582

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method private drawLine(Landroid/graphics/Canvas;[F[F)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->dashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    aget p2, p2, v3

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPath:Landroid/graphics/Path;

    aget v0, p3, v1

    aget p3, p3, v3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    .line 37
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 66
    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    aput v3, v1, v5

    new-array v3, v0, [F

    div-int/2addr v2, v0

    int-to-float v2, v2

    aput v2, v3, v4

    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mAuxPreviewMargin:I

    int-to-float v2, v2

    aput v2, v3, v5

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->drawLine(Landroid/graphics/Canvas;[F[F)V

    new-array v1, v0, [F

    .line 67
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v1, v4

    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootHeight:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    aput v3, v1, v5

    new-array v3, v0, [F

    iget v6, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mAuxPreviewMargin:I

    int-to-float v6, v6

    aput v6, v3, v4

    div-int/2addr v2, v0

    int-to-float v2, v2

    aput v2, v3, v5

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->drawLine(Landroid/graphics/Canvas;[F[F)V

    new-array v1, v0, [F

    .line 68
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v1, v4

    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootHeight:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    aput v3, v1, v5

    new-array v3, v0, [F

    iget v6, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootWidth:I

    iget v7, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mAuxPreviewMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v3, v4

    div-int/2addr v2, v0

    int-to-float v2, v2

    aput v2, v3, v5

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->drawLine(Landroid/graphics/Canvas;[F[F)V

    new-array v1, v0, [F

    .line 69
    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    aput v3, v1, v4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v1, v5

    new-array v3, v0, [F

    div-int/2addr v2, v0

    int-to-float v0, v2

    aput v0, v3, v4

    iget v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mAuxPreviewMargin:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v3, v5

    invoke-direct {p0, p1, v1, v3}, Lcom/transsion/camera/app/ui/view/AuxLocateView;->drawLine(Landroid/graphics/Canvas;[F[F)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 73
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mCollapseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAuxLocateViewSize(IIFF)V
    .locals 3

    .line 44
    iput p2, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootWidth:I

    .line 45
    iput p1, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mRootHeight:I

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/AuxLocateView;->mLocateRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    sub-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, p1

    sub-float/2addr v1, p4

    div-float/2addr v1, v2

    .line 47
    iput v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    add-float/2addr p2, p3

    div-float/2addr p2, v2

    .line 48
    iput p2, v0, Landroid/graphics/RectF;->right:F

    int-to-float p1, p1

    add-float/2addr p1, p4

    div-float/2addr p1, v2

    .line 49
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
