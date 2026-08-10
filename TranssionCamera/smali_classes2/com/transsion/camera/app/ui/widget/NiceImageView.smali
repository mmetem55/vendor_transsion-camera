.class public Lcom/transsion/camera/app/ui/widget/NiceImageView;
.super Landroid/widget/ImageView;
.source "NiceImageView.java"


# instance fields
.field private borderColor:I

.field private borderRadii:[F

.field private borderRectF:Landroid/graphics/RectF;

.field private borderWidth:I

.field private context:Landroid/content/Context;

.field private cornerBottomLeftRadius:I

.field private cornerBottomRightRadius:I

.field private cornerRadius:I

.field private cornerTopLeftRadius:I

.field private cornerTopRightRadius:I

.field private height:I

.field private innerBorderColor:I

.field private innerBorderWidth:I

.field private isCircle:Z

.field private isCoverSrc:Z

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private srcPath:Landroid/graphics/Path;

.field private srcRadii:[F

.field private srcRectF:Landroid/graphics/RectF;

.field private width:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 28
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderColor:I

    .line 30
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderColor:I

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->context:Landroid/content/Context;

    .line 69
    sget-object p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-ge v0, p2, :cond_c

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    .line 72
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_is_cover_src:I

    if-ne p2, p3, :cond_0

    .line 73
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCoverSrc:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCoverSrc:Z

    goto/16 :goto_1

    .line 74
    :cond_0
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_is_circle:I

    if-ne p2, p3, :cond_1

    .line 75
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    goto/16 :goto_1

    .line 76
    :cond_1
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_border_width:I

    if-ne p2, p3, :cond_2

    .line 77
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    goto/16 :goto_1

    .line 78
    :cond_2
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_border_color:I

    if-ne p2, p3, :cond_3

    .line 79
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderColor:I

    goto/16 :goto_1

    .line 80
    :cond_3
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_inner_border_width:I

    if-ne p2, p3, :cond_4

    .line 81
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderWidth:I

    goto :goto_1

    .line 82
    :cond_4
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_inner_border_color:I

    if-ne p2, p3, :cond_5

    .line 83
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderColor:I

    goto :goto_1

    .line 84
    :cond_5
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_corner_radius:I

    if-ne p2, p3, :cond_6

    .line 85
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerRadius:I

    goto :goto_1

    .line 86
    :cond_6
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_corner_top_left_radius:I

    if-ne p2, p3, :cond_7

    .line 87
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopLeftRadius:I

    goto :goto_1

    .line 88
    :cond_7
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_corner_top_right_radius:I

    if-ne p2, p3, :cond_8

    .line 89
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopRightRadius:I

    goto :goto_1

    .line 90
    :cond_8
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_corner_bottom_left_radius:I

    if-ne p2, p3, :cond_9

    .line 91
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomLeftRadius:I

    goto :goto_1

    .line 92
    :cond_9
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_corner_bottom_right_radius:I

    if-ne p2, p3, :cond_a

    .line 93
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomRightRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomRightRadius:I

    goto :goto_1

    .line 94
    :cond_a
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->NiceImageView_mask_color:I

    if-ne p2, p3, :cond_b

    .line 95
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->maskColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->maskColor:I

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 98
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p2, p1, [F

    .line 100
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRadii:[F

    new-array p1, p1, [F

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRadii:[F

    .line 103
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRectF:Landroid/graphics/RectF;

    .line 104
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    .line 107
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    .line 112
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 113
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcPath:Landroid/graphics/Path;

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->calculateRadii()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->clearInnerBorderWidth()V

    return-void
.end method

.method private calculateRadii()V
    .locals 15

    .line 236
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerRadius:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRadii:[F

    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 241
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerRadius:I

    int-to-float v4, v3

    aput v4, v0, v1

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRadii:[F

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRadii:[F

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopLeftRadius:I

    int-to-float v4, v3

    const/4 v5, 0x1

    aput v4, v0, v5

    aput v4, v0, v1

    .line 246
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerTopRightRadius:I

    int-to-float v6, v4

    const/4 v7, 0x3

    aput v6, v0, v7

    const/4 v8, 0x2

    aput v6, v0, v8

    .line 247
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomRightRadius:I

    int-to-float v9, v6

    const/4 v10, 0x5

    aput v9, v0, v10

    const/4 v11, 0x4

    aput v9, v0, v11

    .line 248
    iget v9, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->cornerBottomLeftRadius:I

    int-to-float v12, v9

    const/4 v13, 0x7

    aput v12, v0, v13

    const/4 v14, 0x6

    aput v12, v0, v14

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRadii:[F

    int-to-float v3, v3

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    int-to-float v12, p0

    div-float/2addr v12, v2

    sub-float/2addr v3, v12

    aput v3, v0, v5

    aput v3, v0, v1

    int-to-float v1, v4

    int-to-float v3, p0

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 251
    aput v1, v0, v7

    aput v1, v0, v8

    int-to-float v1, v6

    int-to-float v3, p0

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 252
    aput v1, v0, v10

    aput v1, v0, v11

    int-to-float v1, v9

    int-to-float p0, p0

    div-float/2addr p0, v2

    sub-float/2addr v1, p0

    .line 253
    aput v1, v0, v13

    aput v1, v0, v14

    :cond_2
    return-void
.end method

.method private clearInnerBorderWidth()V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 271
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderWidth:I

    :cond_0
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 10

    .line 175
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-eqz v0, :cond_1

    .line 176
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    .line 177
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderColor:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->radius:F

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    .line 179
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderWidth:I

    if-lez v0, :cond_2

    .line 180
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderColor:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->radius:F

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    goto :goto_0

    .line 183
    :cond_1
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    if-lez v6, :cond_2

    .line 184
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderColor:I

    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRadii:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;IIF)V
    .locals 2

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->initBorderPaint(II)V

    .line 191
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, p4, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 192
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .locals 0

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->initBorderPaint(II)V

    .line 197
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 198
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initBorderPaint(II)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initBorderRectF()V
    .locals 7

    .line 212
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    int-to-float p0, p0

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p0, v1

    invoke-virtual {v0, v2, v4, v5, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private initSrcRectF()V
    .locals 6

    .line 221
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->radius:F

    .line 223
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    int-to-float v4, v3

    div-float/2addr v4, v1

    sub-float/2addr v4, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    int-to-float v5, p0

    div-float/2addr v5, v1

    sub-float/2addr v5, v0

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    invoke-virtual {v2, v4, v5, v3, p0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCoverSrc:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCoverSrc:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 135
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->borderWidth:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->innerBorderWidth:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    int-to-float v7, v0

    div-float/2addr v4, v7

    .line 136
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v7, v3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v6

    int-to-float v5, v7

    div-float/2addr v3, v5

    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v5, v7

    div-float/2addr v5, v2

    .line 138
    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->isCircle:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 164
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->maskColor:I

    if-eqz v0, :cond_2

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->drawBorders(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->width:I

    .line 124
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/NiceImageView;->height:I

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->initBorderRectF()V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/NiceImageView;->initSrcRectF()V

    return-void
.end method
