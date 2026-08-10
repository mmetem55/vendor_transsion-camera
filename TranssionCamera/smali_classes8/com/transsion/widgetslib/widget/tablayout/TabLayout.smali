.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabIndicatorGravity;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabGravity;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x38

.field private static final DEFAULT_HEIGHT_SECOND_PAGE:I = 0x36

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field private static final MIN_INDICATOR_WIDTH:I = 0x18

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mDefStyleAttr:I

.field private mHavePressEffect:Z

.field private mIsFirstLevelTab:Z

.field private mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

.field mode:I

.field private pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 186
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 476
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "TabLayout"

    .line 160
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->TAG:Ljava/lang/String;

    .line 396
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 400
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const p1, 0x7fffffff

    .line 422
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 443
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 465
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 478
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 479
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    .line 480
    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefStyleAttr:I

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 485
    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 486
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 492
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->TabLayout:[I

    sget v3, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 504
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 505
    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 504
    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 506
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 507
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 506
    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 509
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicator:I

    .line 510
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 509
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 511
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 512
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 511
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 513
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 515
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initPaddingParams(Landroid/content/res/TypedArray;)V

    .line 519
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabRippleColor:I

    .line 520
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/16 p1, 0x12c

    .line 522
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    .line 524
    iput v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    .line 526
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabMaxWidth:I

    .line 527
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    .line 528
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabBackground:I

    .line 529
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    .line 530
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    .line 535
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    .line 536
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 537
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    .line 538
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    .line 539
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_scrollableTabMinWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    .line 540
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 542
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    .line 543
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mHavePressEffect:Z

    return p0
.end method

.method private addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 729
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 732
    :cond_0
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 733
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 735
    :cond_1
    iget v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    .line 736
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 738
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 741
    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1460
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v1, 0x0

    .line 1461
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    .line 1462
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 1463
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1487
    instance-of v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    if-eqz v0, :cond_0

    .line 1488
    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V

    return-void

    .line 1490
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1627
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1628
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1629
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1636
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1637
    invoke-direct {p0, p1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1640
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->ensureScrollAnimator()V

    .line 1642
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1643
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    .line 1632
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1808
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 1811
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    .line 1780
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1782
    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1784
    :goto_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1786
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 1789
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_3

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 1790
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    .line 1798
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyGravityForModeScrollable(I)V

    .line 1802
    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    .line 1757
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1760
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 1761
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1763
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 1764
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1767
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1771
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_5

    add-int/2addr p1, p2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method

.method private configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V
    .locals 1

    .line 1450
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    .line 1451
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1453
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 3271
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 3276
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 3280
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1496
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1498
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1436
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    .line 1438
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    const/4 v1, 0x1

    .line 1439
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1440
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1441
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1442
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1444
    :cond_2
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1751
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1752
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1739
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1745
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1651
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1652
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1653
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1654
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1655
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 3286
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3287
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v3, :cond_0

    .line 3288
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

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

    .line 3293
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-nez v0, :cond_2

    const/16 p0, 0x48

    goto :goto_2

    .line 3294
    :cond_2
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x38

    goto :goto_2

    :cond_3
    const/16 p0, 0x36

    :goto_2
    return p0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 3298
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3303
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1383
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1384
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 1383
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private initPaddingParams(Landroid/content/res/TypedArray;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 550
    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 552
    sget v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingStart:I

    .line 553
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 554
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingTop:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    .line 555
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    .line 556
    sget v0, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 557
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    return-void
.end method

.method private initScrollPaddingParams()V
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_scroll_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    :cond_0
    return-void
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1613
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1614
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->reset()V

    .line 1617
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1619
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 1676
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1679
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    .line 1680
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    .line 1681
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTextAppearance()V
    .locals 4

    .line 575
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 576
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_first_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 578
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 580
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_level_title_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextSize:F

    .line 583
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextMultiLineSize:F

    .line 584
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 588
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 589
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 590
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 591
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 592
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1293
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1294
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 1298
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1301
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 1302
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    .line 1304
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1305
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1308
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    .line 1309
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1311
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1315
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1319
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 1320
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    .line 1322
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1323
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1326
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 1330
    :cond_6
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 1331
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1334
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updTabViewPadding()V
    .locals 6

    const/4 v0, 0x0

    .line 3478
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3479
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1427
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1428
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1503
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1504
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1505
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 1507
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 1508
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 781
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V
    .locals 1

    .line 713
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-ne v0, p0, :cond_2

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V

    .line 717
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 720
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->select()V

    .line 722
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    if-eqz p0, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleInsets()V

    :cond_1
    return-void

    .line 714
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1468
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1473
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1483
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1478
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public bindOSTabLayout(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mOSTabLayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 0

    .line 827
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 847
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-nez p0, :cond_0

    .line 849
    new-instance p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3312
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    .line 998
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    return p0
.end method

.method public getTabIndicatorGravity()I
    .locals 0

    .line 1031
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    return p0
.end method

.method getTabMaxWidth()I
    .locals 0

    .line 3316
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    .line 975
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    return p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1170
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public hasUnboundedRipple()Z
    .locals 0

    .line 1150
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    return p0
.end method

.method public isFirstLevelTab(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    .line 570
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTextAppearance()V

    return-void
.end method

.method public isInlineLabel()Z
    .locals 0

    .line 1106
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    return p0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 0

    .line 1063
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    return p0
.end method

.method public newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 840
    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 841
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1355
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1357
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 1359
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1363
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1366
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 3466
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3467
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    if-eqz p1, :cond_0

    .line 3468
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mAttrs:Landroid/util/AttributeSet;

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout:[I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mDefStyleAttr:I

    sget v3, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3470
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initPaddingParams(Landroid/content/res/TypedArray;)V

    .line 3471
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    .line 3472
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3473
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updTabViewPadding()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1373
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1375
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 1378
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1535
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1537
    instance-of v2, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1538
    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1542
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1522
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1523
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1527
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1525
    invoke-static {v0, p0, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 1524
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1549
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1550
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1558
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1552
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1553
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1565
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1566
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1570
    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    .line 1572
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_1
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 1576
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1578
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_8

    .line 1581
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1584
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 1593
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_7

    :goto_2
    move v4, v5

    goto :goto_3

    .line 1589
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 1602
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1600
    invoke-static {p2, v0, v1}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1606
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1607
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_8
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 1408
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeAllTabs()V

    .line 1410
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1411
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1413
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1418
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1419
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1420
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z
    .locals 0

    .line 856
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 931
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 937
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->reset()V

    .line 938
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 941
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 820
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 808
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    .line 892
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-ne v0, p0, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabAt(I)V

    return-void

    .line 893
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 907
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabViewAt(I)V

    .line 909
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v2, :cond_1

    .line 911
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->reset()V

    .line 912
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z

    .line 915
    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 917
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v4, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 921
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1693
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .locals 4

    .line 1705
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1709
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    .line 1710
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1713
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1715
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1718
    invoke-virtual {p0, v2, p2, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1720
    :cond_3
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1723
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    .line 1728
    :cond_4
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_5

    .line 1730
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1733
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1515
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1517
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    .line 1074
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    .line 1075
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    const/4 p1, 0x0

    .line 1076
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1078
    instance-of v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1079
    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->updateOrientation()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    .line 1095
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 766
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 768
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1390
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1393
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1397
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1398
    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1400
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1404
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1666
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->ensureScrollAnimator()V

    .line 1667
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 632
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 652
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 653
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 659
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 663
    :cond_1
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 664
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 666
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 670
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1241
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1240
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1243
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1221
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1222
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 1016
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 1017
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    .line 1018
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabChildEnable(Z)V
    .locals 3

    .line 3452
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3454
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3456
    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 3458
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 985
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    .line 986
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 987
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1050
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    .line 1051
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 960
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eq p1, v0, :cond_0

    .line 961
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    .line 962
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->initScrollPaddingParams()V

    .line 963
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    .line 964
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updTabViewPadding()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 1180
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1160
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1161
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1344
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1256
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1276
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 1350
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1825
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1826
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1827
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1828
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1830
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
