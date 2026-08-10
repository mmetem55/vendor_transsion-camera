.class public Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;
.super Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
.source "DrawSpecifyShapeCursor.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    .line 41
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 12

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    .line 47
    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v2, v8

    div-float v10, v1, v8

    .line 51
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v4, v4, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v3, v3, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 54
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 56
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v8

    .line 57
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    .line 60
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    sub-float/2addr v4, v10

    int-to-float v5, v2

    int-to-float v1, v1

    add-float v6, v1, v10

    iget-object v11, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float v2, v1, v8

    .line 71
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    sub-float/2addr v5, v9

    sub-float/2addr v5, v2

    .line 72
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v3

    sub-float/2addr v6, v10

    sub-float/2addr v6, v2

    int-to-float v4, v4

    add-float/2addr v4, v9

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v3, v10

    add-float v8, v3, v2

    .line 75
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v9, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mRoundCorner:F

    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v5

    move v2, v6

    move v3, v4

    move v4, v8

    move v5, v9

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
