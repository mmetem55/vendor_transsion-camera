.class public Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;
.super Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.source "DrawSpecifyShapeGraduation.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    if-eqz p2, :cond_0

    .line 28
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    .line 29
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 13

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 40
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 42
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    sub-float/2addr v2, v3

    sub-float v6, v2, p2

    int-to-float v7, v1

    int-to-float v0, v0

    add-float/2addr v0, v3

    sub-float v8, v0, p2

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 49
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    sub-float/2addr v5, v3

    sub-float v7, v5, p2

    int-to-float v8, v4

    int-to-float v0, v0

    add-float/2addr v0, v3

    sub-float v9, v0, p2

    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v4, v0

    div-float v11, v4, v2

    .line 59
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    sub-float/2addr v5, v1

    sub-float v6, v5, v11

    .line 60
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    sub-float/2addr v5, v3

    sub-float/2addr v5, v11

    int-to-float v4, v4

    add-float/2addr v4, v1

    add-float v8, v4, v11

    int-to-float v1, v2

    add-float/2addr v1, v3

    add-float/2addr v1, v11

    .line 63
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v7, v5, p2

    sub-float v9, v1, p2

    .line 65
    iget-object v12, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
