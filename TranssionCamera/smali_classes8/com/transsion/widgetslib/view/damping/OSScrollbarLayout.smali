.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.super Landroid/widget/FrameLayout;
.source "OSScrollbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_RECYCLER_VIEW:I = 0x1

.field private static final TYPE_SCROLL_VIEW:I


# instance fields
.field private mAnimScrollBarFade:Landroid/animation/ValueAnimator;

.field private mBarBottom:I

.field private mBarCanSlideDistance:I

.field private mBarMarginRight:I

.field private mBarMarginTop:I

.field private mBarMinLen:I

.field private mBarPullMinLen:I

.field private mBarTop:I

.field private mBarWidth:I

.field private mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field private mHasScrollBar:Z

.field private mHeight:I

.field private mIsDownScroll:Z

.field private mLayoutContentCanSlideDistance:I

.field private mLayoutType:I

.field private final mRect:Landroid/graphics/Rect;

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mScrollRange:I

.field private mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field private mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field private mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field private mViewOver:Landroid/view/View;

.field private mViewScrollBar:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    .line 534
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    .line 534
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 66
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    .line 534
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 71
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->init(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarBottom(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarTop(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mIsDownScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    return p1
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private drawScrollBar()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 221
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v0, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onEdgeEffect()V

    .line 243
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 244
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 289
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 290
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string p2, "getFieldValue error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40c00000    # 6.0f

    .line 76
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 77
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    .line 78
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    if-nez p1, :cond_0

    .line 80
    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    .line 81
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    .line 82
    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    goto :goto_0

    .line 84
    :cond_0
    sget v5, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_right:I

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    .line 85
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_top:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    .line 86
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_width:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    const/high16 p1, 0x41000000    # 8.0f

    .line 90
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    const/high16 p1, 0x42700000    # 60.0f

    .line 91
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    return-void
.end method

.method private initAnimScrollBarFade()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 95
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    .line 96
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private onEdgeEffect()V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_5

    .line 417
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 418
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mTopGlow"

    .line 431
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 432
    instance-of v2, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v2, :cond_2

    .line 433
    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 434
    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_2
    const-string v1, "mBottomGlow"

    .line 437
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_3

    .line 439
    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 440
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v1, :cond_5

    .line 445
    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 446
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_4

    .line 447
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 448
    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 451
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_5

    .line 452
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 453
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    .line 459
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_6

    .line 460
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 471
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimTopEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    .line 474
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_7

    .line 475
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$8;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$8;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 486
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mSpringAnimBottomEdge:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 489
    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBottomEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 490
    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mTopEdgeAnimListener:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    .line 491
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string v1, "onEdgeEffect error"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private playAnimScrollBarFade()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->initAnimScrollBarFade()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 123
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 514
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendScrollBarFadeMsg()V
    .locals 3

    .line 521
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private translateScrollBar(I)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    .line 385
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 386
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, v2

    .line 390
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutContentCanSlideDistance:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 391
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    .line 392
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    .line 393
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    .line 395
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    if-ne v2, v0, :cond_2

    .line 396
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mIsDownScroll:Z

    if-eqz v0, :cond_1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    .line 398
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 402
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateScrollBar(Landroid/view/View;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-lez v1, :cond_8

    if-lez v0, :cond_8

    if-ge v0, p2, :cond_8

    if-eqz v2, :cond_8

    .line 314
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 329
    :cond_1
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    if-ne v4, p2, :cond_2

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    if-ne v4, v1, :cond_2

    .line 330
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->translateScrollBar(I)V

    return-void

    .line 334
    :cond_2
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-nez v4, :cond_3

    .line 335
    new-instance v4, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    .line 336
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    const-string v5, "#7FA1A1A1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 338
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 341
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginRight:I

    sub-int/2addr p1, v4

    .line 342
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    neg-int p1, p1

    :cond_4
    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 343
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScrollBar, mScrollRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scrollRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 347
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    if-ge p1, v4, :cond_6

    if-le v4, v0, :cond_5

    .line 353
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    .line 355
    :cond_5
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMinLen:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sub-int p1, p2, v0

    .line 359
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutContentCanSlideDistance:I

    .line 360
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarMarginTop:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v0, p1

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    if-gez p1, :cond_7

    .line 362
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarCanSlideDistance:I

    .line 364
    :cond_7
    iput p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mScrollRange:I

    .line 365
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHeight:I

    .line 366
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mWidth:I

    .line 368
    new-instance p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$6;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->translateScrollBar(I)V

    return-void

    .line 315
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 316
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 317
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 320
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 323
    :cond_a
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateScrollBar, mHasScrollBar: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mViewScrollBar:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    return-void
.end method

.method private updateScrollBarBottom(F)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 152
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    add-int v2, v1, p0

    if-gt p1, v2, :cond_0

    add-int/2addr v1, p0

    .line 153
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method private updateScrollBarTop(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 159
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarPullMinLen:I

    add-int/2addr p1, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    if-lt p1, p0, :cond_0

    sub-int/2addr p0, v1

    .line 160
    iput p0, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 507
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 508
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->releaseResource()V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mHasScrollBar:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 137
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    .line 139
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarBottom(F)V

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    float-to-int p1, v0

    .line 141
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBarTop(I)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 144
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mBarBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 145
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->sendScrollBarFadeMsg()V

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewScrollBar:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 301
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->updateScrollBar(Landroid/view/View;II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 497
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->playAnimScrollBarFade()V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->cancelAnim(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public setOverScrollView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    .line 172
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 176
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 177
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mLayoutType:I

    .line 178
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 193
    :cond_1
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_2

    .line 194
    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    .line 195
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V

    return-void
.end method

.method public updateScrollBar()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "awakenScrollBars"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 271
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->mViewOver:Landroid/view/View;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 273
    sget-object v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->TAG:Ljava/lang/String;

    const-string v3, "invoke awakenScrollBars error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V

    return-void
.end method
