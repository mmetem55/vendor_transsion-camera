.class public Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;
.super Landroid/view/View;
.source "SkyScannerView.java"


# instance fields
.field private final mAnimDuration:Ljava/lang/Long;

.field private mHorizontalCount:I

.field private mInterval:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPointPaint:Landroid/graphics/Paint;

.field mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomCount:I

.field private mRectPaint:Landroid/graphics/Paint;

.field private mStartTime:Ljava/lang/Long;

.field private mStrokeWidth:I

.field private mVerticalCount:I

.field private mViewHeight:I

.field private mViewWidth:I

.field xPoint:[I

.field yPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x7

    .line 31
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    const-wide/16 v0, 0x3e8

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x7

    .line 31
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    const-wide/16 p1, 0x3e8

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    const-wide/16 p1, 0x0

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    .line 61
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private init()V
    .locals 8

    .line 126
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    mul-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    if-gt v1, v2, :cond_0

    .line 129
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 133
    :goto_1
    iget v3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-ge v2, v3, :cond_3

    move v3, v1

    .line 134
    :goto_2
    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-ge v3, v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRandomCount:I

    if-gt v0, v1, :cond_4

    .line 143
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 156
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->stopAnim()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 67
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 71
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 74
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v1, 0x1

    move v2, v1

    .line 75
    :goto_0
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-gt v2, v5, :cond_2

    const/4 v7, 0x0

    .line 76
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v6, v5, v2

    div-int/lit8 v8, v5, 0x3

    sub-int/2addr v6, v8

    int-to-float v8, v6

    iget v6, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewWidth:I

    int-to-float v9, v6

    mul-int v6, v5, v2

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v6, v5

    int-to-float v10, v6

    iget-object v11, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 78
    :goto_1
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-gt v2, v5, :cond_3

    .line 79
    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v6, v5, v2

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v8, v6

    const/4 v9, 0x0

    mul-int v6, v5, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    int-to-float v10, v6

    iget v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    int-to-float v11, v5

    iget-object v12, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v5, v2

    .line 81
    :goto_2
    iget v6, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-ge v5, v6, :cond_5

    move v6, v2

    .line 82
    :goto_3
    iget v7, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-ge v6, v7, :cond_4

    .line 83
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    aget v7, v7, v6

    int-to-float v7, v7

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    aget v8, v8, v5

    int-to-float v8, v8

    iget-object v9, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPointPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v7, v8, v9}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v15, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v15, p1

    .line 86
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    return-void

    .line 88
    :cond_6
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 89
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v6, v1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v9, v11

    int-to-long v11, v8

    sub-long/2addr v9, v11

    const-wide/16 v13, 0x64

    mul-long/2addr v9, v13

    iget-object v8, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v9, v9, v16

    long-to-int v8, v9

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v9, v9, v17

    sub-long/2addr v9, v11

    cmp-long v1, v9, v3

    if-gez v1, :cond_7

    move v8, v2

    :cond_7
    const/16 v1, 0x64

    if-lt v8, v1, :cond_8

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v8, v8, v17

    sub-long/2addr v8, v11

    mul-long/2addr v8, v13

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mAnimDuration:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    sub-int/2addr v8, v1

    rsub-int/lit8 v8, v8, 0x64

    :cond_8
    if-gez v8, :cond_9

    move v8, v2

    .line 97
    :cond_9
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget v1, v7, Landroid/graphics/Point;->x:I

    int-to-float v11, v1

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v12, v7

    iget v8, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    add-int/2addr v1, v8

    int-to-float v13, v1

    add-int/2addr v7, v8

    int-to-float v14, v7

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move-object v15, v1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v15, p1

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 100
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 106
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewWidth:I

    .line 107
    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    const/16 p3, 0x438

    if-ge p1, p3, :cond_0

    const/16 p4, 0x3c

    goto :goto_0

    :cond_0
    const/16 p4, 0x5a

    .line 108
    :goto_0
    iput p4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    if-ge p1, p3, :cond_1

    const/4 p3, 0x7

    goto :goto_1

    :cond_1
    const/16 p3, 0xa

    .line 109
    :goto_1
    iput p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStrokeWidth:I

    .line 110
    div-int/2addr p1, p4

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    .line 111
    div-int/2addr p2, p4

    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    .line 112
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mViewHeight:I

    div-int/lit8 p2, p2, 0x2

    int-to-float v4, p2

    const-string p2, "#00FFFFFF"

    .line 113
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string p2, "#AAFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 114
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    .line 115
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    const/4 p1, 0x1

    move p2, p1

    .line 116
    :goto_2
    iget p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mHorizontalCount:I

    if-gt p2, p3, :cond_2

    .line 117
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->xPoint:[I

    add-int/lit8 p4, p2, -0x1

    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v1, v0, p2

    div-int/lit8 v0, v0, 0x3

    sub-int/2addr v1, v0

    aput v1, p3, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 119
    :cond_2
    :goto_3
    iget p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mVerticalCount:I

    if-gt p1, p2, :cond_3

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->yPoint:[I

    add-int/lit8 p3, p1, -0x1

    iget p4, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mInterval:I

    mul-int v0, p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    aput v0, p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->init()V

    return-void
.end method

.method public startAnim()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->init()V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stopAnim()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mStartTime:Ljava/lang/Long;

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
