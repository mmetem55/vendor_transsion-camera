.class public Lcom/transsion/widgetslib/view/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "ViewPagerTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/ViewPagerTabs$InternalViewPagerListener;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNREAD_INDICATOR_COLOR:I = -0x10000

.field private static final DEFAULT_UNREAD_INDICATOR_RADIUS:I = 0x3

.field private static final MAX_BALANCED_TAB_COUNT:I = 0x4

.field private static final MIN_BALANCED_TAB_COUNT:I = 0x2

.field private static final MIN_BALANCED_TAB_WIDTH_RATE:F = 0.35f

.field private static final MULTIPLE_DEFAULT_TAB_COLOR:I = -0x1

.field private static final SCROLL_STATE_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewPagerTabs"


# instance fields
.field private mBalancedTitlePadding:I

.field private mContext:Landroid/content/Context;

.field private mCurLeftAndRight:[I

.field private mCurrentPosition:I

.field private mEnableMultipleSelectedTabColors:Z

.field private mIsRtl:Z

.field private mIsTabBalanced:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

.field private mItemsNumber:I

.field private mMoveLineEnd:I

.field private mMoveLineStart:I

.field private mMovingLineHeight:I

.field private mNextLeftAndRight:[I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnScrollListener:Landroid/view/View$OnScrollChangeListener;

.field private mRestorePosition:I

.field private mScreenWidth:I

.field private mSelectedTitleColors:[I

.field private mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

.field private mTabHeight:I

.field private mTitlePadding:I

.field private mUnreadIndicatorPaint:Landroid/graphics/Paint;

.field private mUnreadIndicatorRadius:I

.field private mUnreadPosition:[I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mZoomInTitlesWidth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurLeftAndRight:[I

    new-array v0, v0, [I

    .line 81
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mNextLeftAndRight:[I

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 87
    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadPosition:[I

    .line 104
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->init(Landroid/util/AttributeSet;)V

    .line 106
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    .line 107
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    iget-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->setTabs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrolled(IFI)V

    return-void
.end method

.method static synthetic access$1502(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageSelected(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onTabPageScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMovingLineHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->updateCheckStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mCurLeftAndRight:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mNextLeftAndRight:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineEnd:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private addTabs()V
    .locals 11

    .line 740
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 745
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 748
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->checkTabCount(I)V

    .line 749
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 750
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 752
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    .line 755
    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    div-int/2addr v2, v1

    .line 756
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_6

    .line 763
    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    .line 764
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    .line 768
    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 771
    sget v7, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    const/4 v7, 0x1

    .line 772
    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    const/16 v8, 0x11

    .line 773
    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 778
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v8, :cond_3

    .line 779
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    int-to-float v8, v8

    invoke-direct {p0, v6, v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->breakTitleText(Landroid/widget/TextView;F)V

    .line 781
    :cond_3
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->measureText(Landroid/widget/TextView;)F

    move-result v8

    .line 782
    iget-object v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget-boolean v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v9, :cond_4

    .line 784
    invoke-virtual {v6, v2}, Landroid/widget/CheckedTextView;->setWidth(I)V

    goto :goto_2

    .line 788
    :cond_4
    iget v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setWidth(I)V

    .line 789
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    invoke-virtual {v6, v8, v4, v8, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    :goto_2
    const-string v8, "sans-serif-medium"

    .line 793
    invoke-static {v8, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    .line 794
    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 796
    new-instance v8, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;

    invoke-direct {v8, p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs$4;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v8

    if-ne v5, v8, :cond_5

    .line 806
    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 807
    sget v7, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    .line 819
    :cond_5
    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v7, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private addTabs([Ljava/lang/CharSequence;)V
    .locals 10

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    array-length v0, p1

    .line 355
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->checkTabCount(I)V

    .line 356
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 359
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    .line 361
    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    div-int/2addr v1, v0

    .line 362
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_5

    .line 370
    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 371
    aget-object v6, p1, v4

    if-nez v6, :cond_1

    const-string v6, ""

    .line 372
    aput-object v6, p1, v4

    .line 374
    :cond_1
    aget-object v6, p1, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 377
    sget v6, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    const/4 v6, 0x1

    .line 378
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setSingleLine(Z)V

    const/16 v7, 0x11

    .line 379
    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 383
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v7, :cond_2

    .line 384
    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-float v7, v7

    invoke-direct {p0, v5, v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->breakTitleText(Landroid/widget/TextView;F)V

    .line 386
    :cond_2
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->measureText(Landroid/widget/TextView;)F

    move-result v7

    .line 387
    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mZoomInTitlesWidth:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-eqz v8, :cond_3

    .line 389
    invoke-virtual {v5, v1}, Landroid/widget/CheckedTextView;->setWidth(I)V

    goto :goto_2

    .line 393
    :cond_3
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setWidth(I)V

    .line 394
    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    invoke-virtual {v5, v7, v3, v7, v3}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    :goto_2
    const-string v7, "sans-serif-medium"

    .line 398
    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 399
    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 401
    new-instance v7, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;

    invoke-direct {v7, p0, v4}, Lcom/transsion/widgetslib/view/ViewPagerTabs$1;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-static {v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v7

    if-ne v4, v7, :cond_4

    .line 411
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 412
    sget v6, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    .line 424
    :cond_4
    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private breakTitleText(Landroid/widget/TextView;F)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-void

    .line 336
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p2

    if-lez p2, :cond_2

    .line 342
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OS ViewPagerTabs # breakTitleText() Catch Exception e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewPagerTabs"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private checkTabCount(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    :cond_1
    return-void
.end method

.method private chooseLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v1, :cond_2

    .line 320
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    .line 323
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    .line 321
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p0, -0x2

    invoke-direct {v0, p0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private dp2px(I)I
    .locals 1

    int-to-float p1, p1

    .line 877
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 877
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getRtlPosition(I)I
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 192
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTitlePadding:I

    .line 193
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_average_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mBalancedTitlePadding:I

    .line 196
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 197
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMovingLineHeight:I

    .line 198
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    const/16 v1, 0x10

    .line 199
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    .line 200
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->dp2px(I)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineEnd:I

    .line 201
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mMoveLineStart:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mScreenWidth:I

    .line 203
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 206
    sget v1, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs_osTabHeight:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 207
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    new-instance p1, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    .line 211
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 212
    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorRadius:I

    .line 213
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadIndicatorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-array p1, v0, [I

    .line 220
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 221
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 223
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 453
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 454
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureText(Landroid/widget/TextView;)F
    .locals 0

    .line 444
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private onTabPageScrollStateChanged(I)V
    .locals 0

    .line 839
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method

.method private onTabPageScrolled(IFI)V
    .locals 0

    .line 831
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrolled(IFI)V

    return-void
.end method

.method private onTabPageSelected(I)V
    .locals 0

    .line 835
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageSelected(I)V

    return-void
.end method

.method private setTabs()V
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    .line 725
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 726
    new-array v0, v0, [I

    move v1, v2

    .line 727
    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    if-ge v1, v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    aget v3, v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs()V

    .line 734
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method private updateCheckStatus()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 499
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 501
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 502
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 503
    sget v3, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 505
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 506
    sget v3, Lcom/transsion/widgetslib/R$style;->os_medium_fontweight:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setTextAppearance(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultViewPagerItemIndex()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$000(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 116
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsRtl:Z

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 494
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->updateCheckStatus()V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    .line 460
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    .line 474
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onTabClick(I)V
    .locals 1

    .line 512
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    .line 513
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;->OnItemClick(I)V

    .line 516
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setItemClickListener(Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemClickListener:Lcom/transsion/widgetslib/view/ViewPagerTabs$OnItemClickListener;

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$1800(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;->access$1800(Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mOnScrollListener:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 0

    return-void
.end method

.method public setSelectedTabColors([I)V
    .locals 6

    if-eqz p1, :cond_5

    .line 251
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 254
    :cond_0
    array-length v0, p1

    .line 256
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v0, v1

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    if-nez v1, :cond_2

    .line 260
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    .line 263
    iget-object v4, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v5, p1

    sub-int/2addr v5, v3

    if-gt v1, v5, :cond_3

    aget v3, p1, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mEnableMultipleSelectedTabColors:Z

    .line 268
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setTabBalanced(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mIsTabBalanced:Z

    return-void
.end method

.method public setTabChildEnable(Z)V
    .locals 4

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 892
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 893
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 897
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setTabHeight(I)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    int-to-float p1, p1

    .line 276
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 275
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    .line 277
    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 279
    iget v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 280
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 282
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 283
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setTabs([Ljava/lang/CharSequence;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 288
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 292
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    .line 293
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 294
    new-array v0, v0, [I

    move v1, v2

    .line 295
    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mItemsNumber:I

    if-ge v1, v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_1

    aget v3, v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mSelectedTitleColors:[I

    .line 301
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->addTabs([Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setTitleTabEnable(IZ)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 870
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setUnSelectTextColor(I)V
    .locals 0

    return-void
.end method

.method public varargs setUnreadTip([I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 710
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mUnreadPosition:[I

    .line 715
    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mTabChild:Lcom/transsion/widgetslib/view/ViewPagerTabs$HorizontalTabChild;

    if-eqz p0, :cond_1

    .line 716
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 637
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 638
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$2;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 2

    .line 678
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 679
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs$3;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
