.class public Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;
.super Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
.source "DrawCursor.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    .line 38
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    .line 43
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    .line 44
    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    div-float/2addr v1, v3

    .line 48
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v5, v5, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v2

    sub-float v8, v6, v1

    int-to-float v9, v5

    int-to-float v2, v2

    add-float v10, v2, v1

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    div-float v3, v2, v3

    .line 56
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v6

    sub-float/2addr v7, v4

    sub-float v9, v7, v3

    .line 57
    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v5

    sub-float/2addr v7, v1

    sub-float v10, v7, v3

    int-to-float v6, v6

    add-float/2addr v6, v4

    add-float v11, v6, v3

    int-to-float v4, v5

    add-float/2addr v4, v1

    add-float v12, v4, v3

    .line 60
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v14, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mRoundCorner:F

    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawCursor;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
