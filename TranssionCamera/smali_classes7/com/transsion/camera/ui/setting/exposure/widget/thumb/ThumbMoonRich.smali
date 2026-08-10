.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;
.source "ThumbMoonRich.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;
    }
.end annotation


# instance fields
.field private final mMoonRadius:I

.field private final mStretch:I

.field private final mWaningMoonRadius:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    .line 30
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mMoonRadius:I

    .line 31
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->access$100(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMin()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMax()I

    move-result v1

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getProgress()I

    move-result v2

    add-int/2addr v1, v0

    .line 40
    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v0

    .line 41
    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lt v2, v1, :cond_0

    move v0, v4

    move v1, v5

    move v7, v1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-gt v2, v3, :cond_1

    .line 50
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v1, v1

    .line 52
    iget v7, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v7, v7

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v2, v0

    sub-float/2addr v6, v2

    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    int-to-float v0, v0

    mul-float/2addr v6, v0

    add-float/2addr v7, v6

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v0

    mul-float/2addr v7, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 54
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    move v0, v4

    move v7, v5

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeClear:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mStroke:I

    int-to-float v2, v2

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mMoonRadius:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v0

    mul-float/2addr v2, v0

    .line 72
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mBrilliantRaysLength:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    const/16 v1, 0x8

    if-ge v4, v1, :cond_3

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 76
    iget-object v10, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x42340000    # 45.0f

    .line 77
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method
