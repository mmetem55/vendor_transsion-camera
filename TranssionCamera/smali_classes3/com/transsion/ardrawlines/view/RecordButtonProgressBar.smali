.class public Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;
.super Landroid/view/View;
.source "RecordButtonProgressBar.java"


# static fields
.field private static final START_ANGLE:I = -0x5a


# instance fields
.field private circle:Landroid/graphics/RectF;

.field private currentSweep:I

.field private endPercentProgress:F

.field private endSweep:I

.field private isPaused:Z

.field private progressEndColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPath:Landroid/graphics/Path;

.field private progressStartColor:I

.field private ringWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x14

    .line 25
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->isPaused:Z

    .line 48
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x14

    .line 25
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->isPaused:Z

    .line 54
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x14

    .line 25
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->isPaused:Z

    .line 60
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 10

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 70
    iput v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endPercentProgress:F

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endSweep:I

    .line 75
    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->currentSweep:I

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/ardrawlines/R$color;->app_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressStartColor:I

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressEndColor:I

    .line 88
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v6, v2

    iget v7, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressStartColor:I

    iget v8, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressEndColor:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 89
    iget-object v2, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->circle:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    return-void
.end method

.method private updateProgressPath()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->circle:Landroid/graphics/RectF;

    iget p0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->currentSweep:I

    int-to-float p0, p0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method


# virtual methods
.method public getAnimationState()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->isPaused:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 131
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 116
    iget-object p2, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->circle:Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->ringWidth:I

    div-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {p2, p4, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    invoke-direct {p0}, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->updateProgressPath()V

    return-void
.end method

.method public reset()V
    .locals 9

    .line 98
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressStartColor:I

    iget v6, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressEndColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    iget-object p0, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public setAnimationState(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->isPaused:Z

    return-void
.end method

.method public setCurrentDuration(JJ)V
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 142
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endPercentProgress:F

    const/16 p2, 0x167

    int-to-float p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 145
    iput p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endSweep:I

    if-lt p1, p2, :cond_0

    .line 148
    iput p2, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endSweep:I

    .line 150
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 154
    iget-object p1, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->progressPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->circle:Landroid/graphics/RectF;

    const/high16 p3, -0x3d4c0000    # -90.0f

    iget p4, p0, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;->endSweep:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
