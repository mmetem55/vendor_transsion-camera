.class public Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.super Landroid/view/View;
.source "OSSmartScrollbar.java"


# static fields
.field private static final BAR_HEIGHT:I = 0x2d

.field private static final BAR_MARGIN:I = 0x3

.field private static final MIN_BAR_LEN:I = 0x9

.field private static final START_ANGLE:I = 0x10

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mArcColor:I

.field private mBarColor:I

.field private mBarLen:F

.field private mBarMargin:F

.field private mIsRegisterScrollChangedListener:Z

.field private mMaxBarLen:F

.field private mMaxScrollDistance:I

.field private mMeasureArc:Landroid/graphics/PathMeasure;

.field private mMinBarLen:F

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathArc:Landroid/graphics/Path;

.field private mPathBar:Landroid/graphics/Path;

.field private mRatio:F

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mScrollableView:Landroid/view/View;

.field private mScrollingView:Landroidx/core/view/ScrollingView;

.field private mStopD:F

.field private mStrokeWidth:F

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 213
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 245
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 316
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 213
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 245
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 316
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 66
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 213
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 245
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 316
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$3;-><init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    .line 71
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F

    return p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollExtent()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    return p1
.end method

.method private getScrollExtent()I
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollExtent"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getScrollOffset()I
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollOffset"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getScrollRange()I
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    const-string v1, "computeVerticalScrollRange"

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 353
    :cond_0
    invoke-interface {v0}, Landroidx/core/view/ScrollingView;->computeVerticalScrollRange()I

    move-result p0

    :goto_0
    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I

    const-string v1, "#33FFFFFF"

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    const-string v1, "#99FFFFFF"

    .line 80
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    const/4 v1, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 81
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 86
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 87
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_arc_color:I

    if-ne v4, v5, :cond_0

    .line 88
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setArcColor(I)V

    goto :goto_1

    .line 89
    :cond_0
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_color:I

    if-ne v4, v5, :cond_1

    .line 90
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarColor(I)V

    goto :goto_1

    .line 91
    :cond_1
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSSmartScrollbar_bar_margin:I

    if-ne v4, v5, :cond_2

    .line 92
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->setBarMargin(F)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    .line 99
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 102
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    .line 104
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    .line 107
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    const/high16 p1, 0x41100000    # 9.0f

    .line 110
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    .line 112
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private reflectMethodValue(Landroid/view/View;Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 275
    :try_start_0
    const-class v0, Landroid/view/View;

    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 277
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    const-string v1, "get declared method error !"

    invoke-static {v0, v1, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 284
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_1
    new-array v0, p0, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 287
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 288
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 291
    sget-object p2, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    const-string v0, "invoke method error !"

    invoke-static {p2, v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p0
.end method

.method private sendScrollBarFadeMsg()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public associateScrollableView(Landroid/view/View;)V
    .locals 3

    .line 201
    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "associateScrollView, scrollingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    .line 208
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    .line 209
    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/core/view/ScrollingView;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollingView:Landroidx/core/view/ScrollingView;

    .line 210
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 197
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->sendScrollBarFadeMsg()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40a00000    # 5.0f

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 127
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    add-float/2addr v0, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    if-ne v1, v3, :cond_1

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x42340000    # 45.0f

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 137
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 143
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->refreshArc()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->registerScrollChangedListener()V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->unregisterScrollChangedListener()V

    .line 331
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 338
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshArc()V
    .locals 11

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 148
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 157
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStrokeWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    sub-float/2addr v2, v3

    .line 160
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    neg-float v6, v2

    const/high16 v9, -0x3cdc0000    # -164.0f

    const/high16 v10, -0x3e000000    # -32.0f

    move v5, v6

    move v7, v2

    move v8, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, -0x3ccc0000    # -180.0f

    .line 163
    invoke-virtual {p0, v3}, Landroid/view/View;->setRotation(F)V

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathArc:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 167
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 168
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    .line 169
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    .line 170
    sget-object v4, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshArc, arcLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mMinBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxBarLen: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mStopD: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", w: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", radius: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 173
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F

    mul-float/2addr v0, v1

    .line 174
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method public registerScrollChangedListener()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 401
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public setArcColor(I)V
    .locals 0

    .line 382
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mArcColor:I

    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarColor:I

    return-void
.end method

.method public setBarMargin(F)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarMargin:F

    return-void
.end method

.method public unregisterScrollChangedListener()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 412
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mIsRegisterScrollChangedListener:Z

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 414
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
