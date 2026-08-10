.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;
.super Landroid/view/View;
.source "MovieProgress.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mInterval:F

.field private mItemHeight:F

.field private mItemRectF:Landroid/graphics/RectF;

.field private mItemWidth:F

.field private mMaxProgress:I

.field private mProgress:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemRectF:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgressPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    sget v1, Lcom/transsion/camera/feature/movie/R$dimen;->default_progress_indicator_radius:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 68
    sget v2, Lcom/transsion/camera/feature/movie/R$dimen;->default_progress_indicator_interval:I

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 70
    sget v3, Lcom/transsion/camera/feature/movie/R$dimen;->default_progress_indicator_item_width:I

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 72
    sget v4, Lcom/transsion/camera/feature/movie/R$dimen;->default_progress_indicator_item_height:I

    .line 73
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 74
    sget v5, Lcom/transsion/camera/feature/movie/R$color;->default_movie_progress_progress_color:I

    const/4 v6, 0x0

    .line 75
    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 76
    sget v7, Lcom/transsion/camera/feature/movie/R$color;->default_movie_progress_background_color:I

    .line 77
    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 79
    sget-object v6, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mRadius:F

    .line 84
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_interval:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mInterval:F

    .line 86
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_item_width:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemWidth:F

    .line 88
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_item_height:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemHeight:F

    .line 90
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_progress_color:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 92
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieProgress_background_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 96
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v1, p0

    float-to-int p0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 5

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 136
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mInterval:F

    mul-float/2addr v1, p0

    add-float/2addr v2, v1

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v2, p0

    float-to-int p0, v2

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 146
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    if-gtz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemWidth:F

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mInterval:F

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemHeight:F

    div-float v1, v3, v1

    sub-float/2addr v2, v1

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemRectF:Landroid/graphics/RectF;

    .line 186
    iget v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemWidth:F

    add-float/2addr v5, v0

    add-float/2addr v3, v2

    invoke-virtual {v1, v0, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    if-gt v4, v0, :cond_2

    .line 189
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgress:I

    if-gt v4, v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgressPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 194
    :goto_1
    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mRadius:F

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mItemWidth:F

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mInterval:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->measureWidth(I)I

    move-result p1

    .line 128
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->measureHeight(I)I

    move-result p2

    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->setProgress(I)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 3

    .line 103
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxProgress maxProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 109
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    if-le p1, v0, :cond_0

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mMaxProgress:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgress:I

    goto :goto_0

    .line 113
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieProgress;->mProgress:I

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
