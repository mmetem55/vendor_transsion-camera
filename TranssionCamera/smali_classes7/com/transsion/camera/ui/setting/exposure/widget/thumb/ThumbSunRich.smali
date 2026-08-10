.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;
.source "ThumbSunRich.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;
    }
.end annotation


# instance fields
.field private final mStretch:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    .line 28
    iget p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;->mStretch:I

    return-void
.end method

.method private calculateCurrentStretch()F
    .locals 4

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMin()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMax()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getProgress()I

    move-result v2

    add-int/2addr v0, v1

    .line 35
    div-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;->mStretch:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    return v2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;->calculateCurrentStretch()F

    move-result v0

    .line 48
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mStroke:I

    int-to-float v2, v2

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v2

    mul-float/2addr v1, v2

    .line 54
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mBrilliantRaysLength:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 60
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x42340000    # 45.0f

    .line 61
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
