.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;
.super Landroid/view/View;
.source "RecorderProgressView.java"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mDuration:J

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:J

.field private mRect:Landroid/graphics/RectF;

.field private mRingPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimeUnit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mOval:Landroid/graphics/RectF;

    .line 37
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private angle()I
    .locals 4

    .line 123
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mProgress:J

    const-wide/16 v2, 0x168

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mDuration:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 4

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 115
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private formatProgress()Ljava/lang/String;
    .locals 8

    .line 127
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mProgress:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 128
    div-long v4, v0, v2

    long-to-int v4, v4

    .line 129
    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 130
    div-int/lit8 v0, v0, 0x64

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTimeUnit:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const-string v6, "%01d.%01d"

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v7, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTimeUnit:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 65
    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_progress_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    .line 67
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mPaint:Landroid/graphics/Paint;

    .line 68
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mPaint:Landroid/graphics/Paint;

    sget v5, Lcom/transsion/camera/feature/movie/R$color;->movie_recorder_progress_color:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTextPaint:Landroid/graphics/Paint;

    .line 73
    sget v6, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_progress_text_size:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 77
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget v5, Lcom/transsion/camera/feature/movie/R$color;->movie_recorder_progress_background_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 82
    sget v2, Lcom/transsion/camera/feature/movie/R$color;->movie_recorder_segment_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 83
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRingPaint:Landroid/graphics/Paint;

    .line 84
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRingPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget p1, Lcom/transsion/camera/feature/movie/R$string;->movie_time_unit:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mTimeUnit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 107
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->angle()I

    move-result v0

    int-to-float v5, v0

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->formatProgress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mOval:Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    int-to-float v0, p2

    int-to-float p2, p2

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 94
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mStrokeWidth:I

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    int-to-float p0, v2

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateProgress(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mProgress:J

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateTotalDuration(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderProgressView;->mDuration:J

    return-void
.end method
