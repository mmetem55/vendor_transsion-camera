.class public Lcom/transsion/camera/app/ui/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;,
        Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sTabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isOriginal:Ljava/lang/Boolean;

.field private mContentInsetStart:I

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollX:I

.field private mCurrentTab:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMoving:Z

.field private mNeedUpdateHeadFootPadding:Z

.field private mPreviousScrollX:I

.field private mReScrollToSelectTab:Z

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

.field private mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

.field mSelectedTabTextAppearance:I

.field private mTabAnimationDuration:I

.field private mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

.field final mTabBackgroundResId:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

.field private final mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

.field mTabTextAppearance:I

.field private final mTabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 87
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 83
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/16 v0, 0x12c

    .line 110
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    .line 130
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabBackgroundResId:I

    const v1, 0x7fffffff

    .line 132
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    .line 136
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    .line 145
    new-instance v1, Landroidx/core/util/Pools$SimplePool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    .line 1157
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    .line 159
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, 0x2

    .line 162
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 165
    new-instance v2, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    .line 166
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, p3, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v1, [I

    .line 169
    fill-array-data v0, :array_0

    .line 174
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x10301ed

    .line 175
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    const/4 p3, 0x1

    const v0, 0x1030209

    .line 177
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTabTextAppearance:I

    .line 178
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->applyModeAndGravity()V

    return-void

    :array_0
    .array-data 4
        0x1010034
        0x1010035
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/widget/TabLayout;Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->selectTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/widget/TabLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    return-object p0
.end method

.method private addTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .locals 2

    .line 413
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 414
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 803
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 779
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 786
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 787
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

    .line 791
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

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private configureTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;I)V
    .locals 1

    .line 403
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setPosition(I)V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 434
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 395
    new-instance v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V

    .line 397
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    const/4 p0, 0x0

    .line 398
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-object v0
.end method

.method private differentScrollX()Z
    .locals 1

    .line 514
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

    if-eqz p0, :cond_0

    .line 773
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 552
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$1;-><init>(Lcom/transsion/camera/app/ui/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method

.method private ensureSelectedTabPosition()V
    .locals 3

    .line 855
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    const/4 v0, 0x0

    .line 857
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    .line 858
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 1354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1355
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v3, :cond_0

    .line 1356
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 p0, 0x48

    goto :goto_2

    :cond_2
    const/16 p0, 0x30

    :goto_2
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 389
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 388
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private invalidCurrentTab()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result p0

    return p0
.end method

.method private invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 730
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

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

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

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

.method private isCurrentTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onMeasureDone()V
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 830
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    .line 831
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setHeadFootPadding()V

    :cond_0
    return-void
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->reset()V

    .line 497
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private scrollTo(I)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 717
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    .line 718
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    return-void
.end method

.method private scrollToTab(I)V
    .locals 2

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->viewNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 528
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[scrollToTab] viewNotReady"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollX(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->differentScrollX()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 533
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private selectTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V
    .locals 1

    .line 734
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "selectTab is invalid position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 738
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isCurrentTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollToTab(I)V

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    .line 742
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    .line 743
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :goto_0
    return-void
.end method

.method private setCurrentTabView(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 569
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 573
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 574
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setHeadFootPadding()V
    .locals 5

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabLayoutWidth()I

    move-result v1

    .line 844
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 845
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v2, v1, v2

    .line 846
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v0

    .line 847
    div-int/lit8 v1, v1, 0x2

    .line 849
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContentInsetStart:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 850
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    add-int/2addr v0, v2

    invoke-static {p0, v0, v3, v1, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method private startScrollAnimator()V
    .locals 4

    .line 544
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->ensureScrollAnimator()V

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startVibrator()V
    .locals 3

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 678
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 680
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private updateScrollPosition(ZI)V
    .locals 1

    .line 748
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidCurrentTab()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->viewNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollX(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->differentScrollX()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 756
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->startScrollAnimator()V

    goto :goto_1

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 759
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 751
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0, p2, v0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 753
    sget-object p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateScrollPosition] viewNotReady"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateScrollX(I)Z
    .locals 2

    .line 503
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    .line 505
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 508
    :cond_0
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentScrollX:I

    .line 509
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTargetScrollX:I

    const/4 p0, 0x1

    return p0
.end method

.method private updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz p1, :cond_0

    .line 767
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dispatchTabSelected(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    const/4 p0, -0x2

    .line 441
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 442
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private validTabIndex(I)I
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private viewNotReady()Z
    .locals 1

    .line 518
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

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
.method public addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;IZ)V
    .locals 1

    .line 255
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-ne v0, p0, :cond_1

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->configureTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;I)V

    .line 259
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 262
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(Z)V

    :cond_0
    return-void

    .line 256
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;IZ)V

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

.method public canScrollToNext()Z
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canScrollToPrevious()Z
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrolling()Z
    .locals 0

    .line 696
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->isScrolling()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public checkTabIndex()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 600
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateScrollPosition(ZI)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 884
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x0

    .line 894
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 896
    sget-object p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method dpToPx(I)I
    .locals 0

    .line 446
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1370
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getCenterNearestIndex()I
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 660
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    new-array v2, v0, [I

    .line 662
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getLocationInWindow([I)V

    aget v2, v2, v3

    .line 663
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v2, v4

    aget v4, v1, v3

    .line 664
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x1

    move v6, v3

    .line 665
    :goto_0
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 666
    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v7, v7, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    aget v7, v1, v3

    .line 667
    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v8, v8, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    div-int/2addr v8, v0

    add-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_0

    move v6, v5

    move v4, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method public getMoreTabView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabLayoutWidth()I
    .locals 0

    .line 1378
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    return p0
.end method

.method getTabMaxWidth()I
    .locals 0

    .line 1374
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    return p0
.end method

.method public isScrolling()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTab()Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 1

    .line 283
    sget-object v0, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;-><init>()V

    .line 287
    :cond_0
    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 288
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->createTabView(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 818
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setHeadFootPadding()V

    goto :goto_0

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->ensureSelectedTabPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 457
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 456
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 465
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 466
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x38

    .line 469
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    .line 473
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 475
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 478
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    if-ge v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 482
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p1

    .line 483
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    invoke-static {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 485
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p2

    .line 484
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 486
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->measure(II)V

    .line 489
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->onMeasureDone()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 640
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    if-eqz p0, :cond_0

    .line 642
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;->onScrolling()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public removeAllTabs()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 368
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 374
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->reset()V

    .line 375
    sget-object v2, Lcom/transsion/camera/app/ui/widget/TabLayout;->sTabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    return-void
.end method

.method public scrollToNext()V
    .locals 3

    .line 701
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method public scrollToPrevious()V
    .locals 3

    .line 709
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->validTabIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method public scrolling(FF)V
    .locals 2

    .line 623
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 624
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    .line 625
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result p2

    float-to-int v0, p1

    .line 628
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 629
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-eq p2, v0, :cond_1

    .line 630
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    .line 631
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->startVibrator()V

    .line 633
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    if-eqz p0, :cond_2

    .line 634
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;->onTabScroll(F)V

    :cond_2
    return-void
.end method

.method public selectTabIndex(IZ)Z
    .locals 1

    .line 590
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->invalidTabIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 593
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 594
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public setOnTabScrollListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabScrollListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabScrollListener;

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedListener:Lcom/transsion/camera/app/ui/widget/TabLayout$OnTabSelectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 4

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 196
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->cancelScrollAnimator()V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-lez p1, :cond_1

    .line 204
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 206
    sget-object p2, Lcom/transsion/camera/app/ui/widget/TabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 207
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mReScrollToSelectTab:Z

    :cond_1
    if-eqz p3, :cond_2

    .line 212
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->setCurrentTabView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTabAnimationDuration(I)V
    .locals 0

    .line 863
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationDuration:I

    return-void
.end method

.method public setTabAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setTabNormalTextColorState(Z)V
    .locals 1

    .line 1160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->isOriginal:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 1161
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1162
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mCurrentTab:I

    if-eq p1, v0, :cond_0

    .line 1163
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabAt(I)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->initTabNormalTextColor()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopScroll()V
    .locals 3

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mMoving:Z

    .line 649
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mPreviousScrollX:I

    .line 650
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getCenterNearestIndex()I

    move-result v0

    .line 651
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->scrollTo(I)V

    .line 652
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 653
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateSelectedTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method public updateHeadFootPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mNeedUpdateHeadFootPadding:Z

    return-void
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabStrip:Lcom/transsion/camera/app/ui/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
