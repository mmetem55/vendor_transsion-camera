.class public Lcom/transsion/camera/ui/setting/level/Gradienter;
.super Landroid/view/View;
.source "Gradienter.java"


# instance fields
.field private LEVEL_CIRCLE_COLOR:I

.field private LEVEL_CIRCLE_RADIUS_DP:I

.field private LEVEL_INDICATOR_COLOR:I

.field private LEVEL_STROKE_WIDTH_DP:I

.field private VIEW_HEIGHT_DP:I

.field private VIEW_WIDTH_DP:I

.field private mLastDegrees:F

.field private mLevelCircleColor:I

.field private mLevelCircleRadius:F

.field private mLevelIndicatorColor:I

.field private mLevelIndicatorDegrees:F

.field private final mLevelPaint:Landroid/graphics/Paint;

.field private final mLevelStrokeWidth:I

.field private mLineCoincide:Z

.field private mResource:Landroid/content/res/Resources;

.field private final mRotatePaint:Landroid/graphics/Paint;

.field private mViewHeight:I

.field private mViewWidth:I

.field private middle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLineCoincide:Z

    .line 25
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->middle:Z

    const/4 v0, 0x5

    .line 30
    iput v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_CIRCLE_RADIUS_DP:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    .line 57
    sget-object v1, Lcom/transsion/camera/R$styleable;->MyLevelView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0600d9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_INDICATOR_COLOR:I

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702e3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_CIRCLE_RADIUS_DP:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0600d8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_CIRCLE_COLOR:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702e9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_STROKE_WIDTH_DP:I

    .line 63
    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_INDICATOR_COLOR:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorColor:I

    .line 64
    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelStrokeWidth:I

    .line 65
    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_CIRCLE_COLOR:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleColor:I

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->LEVEL_CIRCLE_RADIUS_DP:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->VIEW_WIDTH_DP:I

    .line 69
    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->VIEW_HEIGHT_DP:I

    .line 71
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    iget v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->VIEW_HEIGHT_DP:I

    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/ui/setting/level/Gradienter;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mResource:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewHeight:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p2

    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p0, p2

    .line 83
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/level/Gradienter;)F
    .locals 0

    .line 18
    iget p0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorDegrees:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/ui/setting/level/Gradienter;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorDegrees:F

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->middle:Z

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/ui/setting/level/Gradienter;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLineCoincide:Z

    return p1
.end method

.method private animateLevelIndicatorDegrees(FFI)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 89
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 90
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const p3, 0x3f4ccccd    # 0.8f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    new-instance p2, Lcom/transsion/camera/ui/setting/level/Gradienter$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/level/Gradienter$1;-><init>(Lcom/transsion/camera/ui/setting/level/Gradienter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private dp2Px(Landroid/content/res/Resources;I)I
    .locals 0

    .line 180
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p2

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .locals 9

    .line 186
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLineCoincide:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->middle:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float v4, v0, v2

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    sub-float v6, v0, v2

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v1

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 195
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    add-float v4, v0, v2

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float v6, v0, v2

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v1

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    .line 199
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float v4, v0, v2

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    sub-float v6, v0, v2

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 204
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    add-float v4, v0, v2

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float v6, v0, v2

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 208
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 219
    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorDegrees:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 219
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorDegrees:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 229
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 231
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelCircleRadius:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    return-void

    nop

    :array_0
    .array-data 4
        0x41b00000    # 22.0f
        0x41b00000    # 22.0f
        0x41b00000    # 22.0f
        0x41b00000    # 22.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->drawLevel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSensorChanged([F)V
    .locals 7

    const/4 v0, 0x0

    .line 154
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 155
    aget p1, p1, v1

    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v3, p1

    div-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v3, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-lez p1, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    cmpg-double p1, v3, v5

    if-gez p1, :cond_1

    move-wide v3, v5

    .line 163
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v1, v3

    :cond_2
    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int p1, v1

    if-gez p1, :cond_3

    rsub-int p1, p1, -0x168

    :cond_3
    int-to-float p1, p1

    .line 172
    iget v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLastDegrees:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 173
    iget v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLevelIndicatorDegrees:F

    const/16 v1, 0xc8

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->animateLevelIndicatorDegrees(FFI)V

    .line 174
    iput p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mLastDegrees:F

    :cond_4
    return-void
.end method
