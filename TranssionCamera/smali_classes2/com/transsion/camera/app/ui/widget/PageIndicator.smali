.class public Lcom/transsion/camera/app/ui/widget/PageIndicator;
.super Landroid/view/View;
.source "PageIndicator.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private final mHorizontalInterval:F

.field private final mNormalPaint:Landroid/graphics/Paint;

.field private final mNormalRadius:F

.field private mPosition:I

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private final mSelectRadius:F

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mTotalSize:I

.field private final mVerticalInterval:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/PageIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mEnableAnimation:Z

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    .line 51
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mStartDegree:I

    .line 52
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationStartTime:J

    .line 55
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationEndTime:J

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_page_indicator_normal_radius:I

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 81
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_page_indicator_select_radius:I

    .line 82
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 83
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_page_indicator_horizontal_interval:I

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 85
    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_page_indicator_vertical_interval:I

    .line 86
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 87
    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_page_indicator_normal_color:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 89
    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_page_indicator_select_color:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 92
    sget-object v8, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_normalRadius:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    .line 97
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_selectRadius:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    .line 99
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_horizontalInterval:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mHorizontalInterval:F

    .line 101
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_verticalInterval:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mVerticalInterval:F

    .line 104
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_normalColor:I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    .line 106
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->PageIndicator_selectColor:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    .line 111
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 275
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    .line 276
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gtz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 283
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    sub-int v3, v0, v3

    sub-int/2addr v3, v2

    .line 286
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_6

    if-ne v3, v6, :cond_2

    .line 293
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    .line 294
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 296
    :cond_2
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    .line 297
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalPaint:Landroid/graphics/Paint;

    :goto_1
    if-nez v6, :cond_3

    add-float/2addr v2, v7

    .line 301
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    iget v9, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_2
    add-float/2addr v4, v5

    goto :goto_3

    .line 303
    :cond_3
    iget v9, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mHorizontalInterval:F

    add-float/2addr v5, v9

    add-float/2addr v5, v7

    add-float/2addr v2, v5

    const/4 v5, 0x2

    if-lt v1, v5, :cond_5

    if-ge v6, v1, :cond_4

    .line 306
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mVerticalInterval:F

    goto :goto_2

    .line 308
    :cond_4
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mVerticalInterval:F

    sub-float/2addr v4, v5

    .line 313
    :cond_5
    :goto_3
    invoke-virtual {p1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_0

    :cond_6
    return-void
.end method

.method private measureHeight(I)I
    .locals 6

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 214
    :cond_0
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    if-gtz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 218
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 220
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v2

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    .line 223
    :cond_3
    div-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 224
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mVerticalInterval:F

    mul-float/2addr v1, v2

    add-float/2addr v4, v1

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    float-to-int v1, v4

    :goto_1
    const/high16 p0, -0x80000000

    if-ne v0, p0, :cond_4

    .line 230
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    return p1
.end method

.method private measureWidth(I)I
    .locals 6

    .line 181
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 182
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 184
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_3

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mNormalRadius:F

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mSelectRadius:F

    mul-float/2addr v3, v2

    add-float/2addr v4, v3

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mHorizontalInterval:F

    mul-float/2addr v1, p0

    add-float/2addr v4, v1

    float-to-int p0, v4

    :goto_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 198
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, p0

    :cond_3
    :goto_1
    return p1
.end method

.method private postDraw(Landroid/graphics/Canvas;I)V
    .locals 0

    .line 318
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)I
    .locals 6

    .line 246
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    if-eq v0, v1, :cond_3

    .line 247
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 248
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mEnableAnimation:Z

    if-eqz v2, :cond_2

    .line 249
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 250
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mStartDegree:I

    .line 251
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mClockwise:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 252
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 253
    :goto_1
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 256
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 264
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    .line 268
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v4

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 270
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return v2
.end method

.method private setDegree(I)V
    .locals 6

    if-ltz p1, :cond_0

    .line 143
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 145
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    return-void

    .line 148
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    .line 150
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mEnableAnimation:Z

    if-eqz v0, :cond_5

    .line 151
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mStartDegree:I

    .line 152
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationStartTime:J

    .line 154
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTargetDegree:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 v2, 0xb4

    if-le p1, v2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 161
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mClockwise:Z

    .line 163
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x10e

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mAnimationEndTime:J

    goto :goto_3

    .line 165
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mCurrentDegree:I

    .line 168
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->preDraw(Landroid/graphics/Canvas;)I

    move-result v0

    .line 241
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->doDraw(Landroid/graphics/Canvas;)V

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->postDraw(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->measureWidth(I)I

    move-result p1

    .line 174
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->measureHeight(I)I

    move-result p2

    .line 175
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 176
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 332
    check-cast p1, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;

    .line 333
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;->mPosition:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 324
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 326
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/PageIndicator$SavedState;->mPosition:I

    return-object v1
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 137
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mEnableAnimation:Z

    .line 138
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/PageIndicator;->setDegree(I)V

    return-void
.end method

.method public setPageSize(I)V
    .locals 3

    .line 118
    sget-object v0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageSize size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 119
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    if-eq v0, p1, :cond_0

    .line 120
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSelectPosition(I)V
    .locals 3

    .line 126
    sget-object v0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectPosition position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mTotalSize:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 128
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/PageIndicator;->mPosition:I

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
