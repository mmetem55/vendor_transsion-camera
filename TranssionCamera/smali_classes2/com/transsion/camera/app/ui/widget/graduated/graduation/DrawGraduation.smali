.class public Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;
.super Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.source "DrawGraduation.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 28
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    .line 29
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 13

    .line 34
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 35
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 37
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v4, v4, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
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

    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v4, v0

    div-float v11, v4, v2

    .line 44
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    sub-float/2addr v5, v1

    sub-float v6, v5, v11

    .line 45
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

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v7, v5, p2

    sub-float v9, v1, p2

    .line 50
    iget-object v12, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v10, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateShapeInfoColor(II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->updateGraduationColor(I)V

    if-nez p2, :cond_1

    return-void

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->updateBorderColor(I)V

    return-void
.end method
