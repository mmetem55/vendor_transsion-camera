.class public Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "FitCenterTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;,
        Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;,
        Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;,
        Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sTabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentInsetStart:I

.field private mCurrentScrollX:I

.field private mCurrentTab:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mNeedUpdateHeadFootPadding:Z

.field private mReScrollToSelectTab:Z

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

.field protected mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

.field mSelectedTabTextAppearance:I

.field private mTabAnimationDuration:I

.field private mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

.field final mTabBackgroundResId:I

.field private mTabItemLayoutID:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field private final mTabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 78
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 74
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mReScrollToSelectTab:Z

    const/16 v0, 0x12c

    .line 93
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabAnimationDuration:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentTab:I

    .line 113
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabItemLayoutID:I

    .line 114
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabBackgroundResId:I

    const v1, 0x7fffffff

    .line 116
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabMaxWidth:I

    .line 120
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mNeedUpdateHeadFootPadding:Z

    .line 127
    new-instance v1, Landroidx/core/util/Pools$SimplePool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    .line 141
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, 0x2

    .line 144
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 147
    new-instance v2, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;-><init>(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    .line 148
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, p3, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v1, [I

    .line 151
    fill-array-data v0, :array_0

    .line 156
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x10301ed

    .line 157
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabTextAppearance:I

    const/4 p2, 0x1

    const p3, 0x1030209

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTabTextAppearance:I

    .line 161
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->applyModeAndGravity()V

    return-void

    :array_0
    .array-data 4
        0x1010034
        0x1010035
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabItemLayoutID:I

    return p0
.end method

.method private addTabView(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 2

    .line 387
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    .line 388
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 702
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 678
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 685
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 686
    :goto_3
    div-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    add-int/2addr v2, p1

    int-to-float p1, v2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 690
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_4

    add-int/2addr v1, p1

    goto :goto_4

    :cond_4
    sub-int/2addr v1, p1

    :goto_4
    return v1
.end method

.method private cancelScrollAnimator()V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private configureTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;I)V
    .locals 1

    .line 377
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setPosition(I)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 412
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 369
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;-><init>(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Landroid/content/Context;)V

    .line 371
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    const/4 p0, 0x0

    .line 372
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-object v0
.end method

.method private differentScrollX()Z
    .locals 1

    .line 450
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentScrollX:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    if-eqz p0, :cond_0

    .line 672
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;->onTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$1;-><init>(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private ensureSelectedTabPosition()V
    .locals 3

    .line 748
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mReScrollToSelectTab:Z

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    const/4 v0, 0x0

    .line 750
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mReScrollToSelectTab:Z

    .line 751
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 752
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setScrollPosition(IFZ)V

    :cond_1
    return-void
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 363
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 362
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private invalidCurrentTab()Z
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)Z

    move-result p0

    return p0
.end method

.method private invalidTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private invalidTabIndex(I)Z
    .locals 0

    if-ltz p1, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->reset()V

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private selectTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V
    .locals 1

    .line 614
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectTab is invalid position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateScrollPosition(ZI)V

    .line 628
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setCurrentTabView(I)V

    .line 629
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    return-void
.end method

.method private setCurrentTabView(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 505
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentTab:I

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 509
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 510
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setHeadFootPadding()V
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabLayoutWidth()I

    move-result v1

    .line 737
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 738
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v2, v1, v2

    .line 739
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v0

    .line 740
    div-int/lit8 v1, v1, 0x2

    .line 742
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mContentInsetStart:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    add-int/2addr v0, v2

    invoke-static {p0, v0, v3, v1, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method private startScrollAnimator()V
    .locals 4

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->ensureScrollAnimator()V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentScrollX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateScrollPosition(ZI)V
    .locals 1

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->invalidCurrentTab()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->viewNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateScrollX(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->differentScrollX()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->startScrollAnimator()V

    goto :goto_1

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->cancelScrollAnimator()V

    .line 644
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 636
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mReScrollToSelectTab:Z

    const/4 v0, 0x0

    .line 637
    invoke-virtual {p0, p2, v0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setScrollPosition(IFZ)V

    .line 638
    sget-object p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateScrollPosition] viewNotReady"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateScrollX(I)Z
    .locals 2

    .line 438
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    .line 440
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->cancelScrollAnimator()V

    .line 441
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentScrollX:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    if-ne p1, v1, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 444
    :cond_0
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mCurrentScrollX:I

    .line 445
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    const/4 p0, 0x1

    return p0
.end method

.method private updateSelectedTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 3

    .line 657
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-ne v1, p1, :cond_0

    .line 660
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 666
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    :cond_2
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    const/4 p0, -0x2

    .line 419
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 420
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private viewNotReady()Z
    .locals 1

    .line 454
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    .line 455
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;IZ)V
    .locals 1

    .line 237
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    if-ne v0, p0, :cond_1

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->configureTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;I)V

    .line 241
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->addTabView(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 244
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->select(Z)V

    :cond_0
    return-void

    .line 238
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public checkTabIndex()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateScrollPosition(ZI)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 778
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x0

    .line 788
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 790
    sget-object p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1238
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabLayoutWidth()I
    .locals 0

    .line 1246
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    return p0
.end method

.method public isScrolling()Z
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTab()Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
    .locals 1

    .line 261
    sget-object v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;-><init>()V

    .line 265
    :cond_0
    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    .line 266
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->createTabView(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 717
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setHeadFootPadding()V

    goto :goto_0

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->ensureSelectedTabPosition()V

    .line 724
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTargetScrollX:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public removeAllTabs()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 342
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 348
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->reset()V

    .line 349
    sget-object v2, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    return-void
.end method

.method public selectTabIndex(IZ)Z
    .locals 2

    .line 526
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->invalidTabIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 530
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->select(Z)V

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabCount()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 532
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object p2

    .line 535
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const v0, 0x3f19999a    # 0.6f

    .line 539
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 4

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 178
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->cancelScrollAnimator()V

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    .line 185
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-lez p1, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 188
    sget-object p2, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setScrollPosition] scrollX is not matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mReScrollToSelectTab:Z

    :cond_1
    if-eqz p3, :cond_2

    .line 194
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setCurrentTabView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTabItemLayout(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabItemLayoutID:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected syncTabValue(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eq v0, p1, :cond_0

    .line 651
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 652
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 706
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
