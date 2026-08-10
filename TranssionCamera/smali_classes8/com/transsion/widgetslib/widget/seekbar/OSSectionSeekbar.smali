.class public Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.super Landroid/view/View;
.source "OSSectionSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$CustomSectionTextArray;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isFloatType:Z

.field private isThumbOnDragging:Z

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDelta:F

.field private mDisplayCharacters:Z

.field private mDotsColor:I

.field private mDotsSize:I

.field private mLeft:F

.field private mMax:F

.field private mMin:F

.field private mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProcessMarginTopBottow:I

.field private mProgress:F

.field private mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

.field private final mRectHeightText:Landroid/graphics/Rect;

.field private final mRectText:Landroid/graphics/Rect;

.field private mRight:F

.field private mSecondTrackColor:I

.field private mSecondTrackSize:I

.field private mSectionCount:I

.field private mSectionOffset:F

.field private mSectionTextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionTextColor:I

.field private mSectionTextInterval:I

.field private mSectionTextSize:I

.field private mSectionValue:F

.field private mTextBottomMargin:I

.field private final mTextSpace:I

.field private mTextTopMargin:I

.field private mThumbCenterX:F

.field private mThumbInWidth:I

.field private mThumbInsideColor:I

.field private mThumbOutColor:I

.field private mThumbOutWidth:I

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-class v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 85
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->build()V

    .line 88
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 89
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    .line 90
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMax:I

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    .line 91
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarProgress:I

    iget p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 92
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 93
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarSectionCount:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 94
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarDisplayCharacters:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    .line 95
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setEnabled(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    .line 108
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 109
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextSpace:I

    .line 111
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initConfigByPriority()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->secondTrackColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->thumbOutColor()I

    move-result p0

    return p0
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 4

    .line 376
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    .line 377
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 381
    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gt v1, v2, :cond_3

    int-to-float v0, v1

    .line 382
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    add-float/2addr v0, v3

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_2

    sub-float v3, p1, v0

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-float/2addr p1, v0

    .line 388
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    .line 391
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    add-float/2addr p1, p0

    return p1
.end method

.method private calculateCurrentSection()I
    .locals 2

    .line 412
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private calculateMaxHeight()I
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 216
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private calculateProgress()F
    .locals 2

    .line 405
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    :goto_0
    add-float/2addr v0, p0

    return v0

    .line 408
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    goto :goto_0
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 776
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 775
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private float2String(F)Ljava/lang/String;
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->formatFloat(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formatFloat(F)F
    .locals 1

    float-to-double p0, p1

    .line 400
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 401
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 115
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 117
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    .line 119
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 121
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    .line 122
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    .line 124
    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 125
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 127
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 128
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 130
    :cond_3
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x2

    .line 131
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    .line 133
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    if-gt v0, v1, :cond_5

    const/4 v0, 0x4

    .line 134
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    .line 136
    :cond_5
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    if-ge v0, v1, :cond_6

    const/4 v0, 0x6

    .line 137
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    .line 139
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gtz v0, :cond_7

    const/16 v0, 0xa

    .line 140
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 142
    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    .line 143
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_8

    .line 146
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    .line 148
    :cond_8
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    if-ge v0, v1, :cond_9

    .line 149
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    .line 151
    :cond_9
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initSectionTextArray()V

    .line 152
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void
.end method

.method private initSectionTextArray()V
    .locals 6

    .line 157
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 159
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gt v1, v0, :cond_4

    .line 160
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionValue:F

    int-to-float v4, v1

    mul-float v5, v3, v4

    add-float/2addr v5, v0

    if-eqz v2, :cond_1

    .line 162
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    rem-int v5, v1, v5

    if-nez v5, :cond_3

    mul-float/2addr v3, v4

    add-float v5, v0, v3

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->float2String(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    float-to-int v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private secondTrackColor()I
    .locals 4

    .line 532
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 536
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static sp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 781
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 780
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private thumbOutColor()I
    .locals 4

    .line 523
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 527
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;)V
    .locals 3

    .line 567
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    .line 568
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    .line 569
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 570
    iget-boolean v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    .line 571
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    .line 572
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    .line 573
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    .line 574
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    .line 575
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSize:I

    .line 576
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    .line 577
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextBottomMargin:I

    .line 578
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    .line 579
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    .line 580
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 581
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    .line 582
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    .line 583
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsColor:I

    .line 584
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 585
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    .line 586
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    .line 587
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextInterval:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    .line 588
    iget-boolean p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    .line 590
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initConfigByPriority()V

    .line 591
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_0
    const/4 p1, 0x0

    .line 595
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    .line 597
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    .line 563
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    .line 420
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 416
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 433
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 0

    .line 437
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 228
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 233
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 237
    iget v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 240
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    .line 244
    :goto_0
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gt v4, v5, :cond_4

    .line 245
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-float v5, v4

    .line 246
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v5, v6

    sub-float v5, v9, v5

    goto :goto_1

    :cond_0
    int-to-float v5, v4

    .line 248
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 250
    :goto_1
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    if-le v4, v6, :cond_1

    .line 253
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    :cond_1
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    sub-int/2addr v7, v4

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    if-eqz v6, :cond_3

    .line 259
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    :cond_4
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-nez v3, :cond_6

    .line 264
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 265
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float v3, v9, v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    goto :goto_3

    .line 267
    :cond_5
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mMin:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 273
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 276
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    move v6, v9

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 278
    :cond_7
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v0

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    :goto_4
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 286
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v0

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 288
    :cond_8
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v0

    move v6, v9

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    :goto_5
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    .line 298
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 300
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 223
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 178
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 181
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateMaxHeight()I

    move-result v0

    .line 182
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    if-eqz v2, :cond_0

    .line 185
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    add-int/2addr p2, v2

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextBottomMargin:I

    add-int/2addr p2, v0

    :cond_0
    const/16 v0, 0xb4

    .line 188
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 193
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextSpace:I

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 198
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 199
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 200
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextSpace:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 203
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p2, p1

    .line 204
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 497
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 498
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 499
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 500
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    const-string v0, "save_instance"

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 502
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void

    .line 505
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 491
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    const-string v1, "progress"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 308
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_1

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    .line 343
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 344
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 349
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 350
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 353
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 362
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    .line 363
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_4

    .line 364
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 365
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->performClick()Z

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 330
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 331
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 333
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_4

    .line 334
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    .line 369
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public performClick()Z
    .locals 0

    .line 318
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setCustomSectionTextArray(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$CustomSectionTextArray;)V
    .locals 2

    .line 477
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$CustomSectionTextArray;->onCustomize(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 478
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gt p1, v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 484
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 510
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->secondTrackColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 514
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->thumbOutColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 517
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_solid_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    .line 519
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 424
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgress:F

    .line 425
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 426
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    .line 456
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_0

    .line 457
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbInsideColor(I)V
    .locals 1

    .line 470
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    if-eq v0, p1, :cond_0

    .line 471
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbOutColor(I)V
    .locals 1

    .line 463
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    if-eq v0, p1, :cond_0

    .line 464
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 449
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    if-eq v0, p1, :cond_0

    .line 450
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
