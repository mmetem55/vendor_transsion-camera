.class public Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "CustomTabLayout.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private contentLeftMargin:I

.field private contentRightMargin:I

.field private itemLeftMargin:I

.field private itemRightMargin:I

.field private mCurrentOffset:F

.field private mCurrentTabPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mTabCount:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CustomTabLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    .line 61
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_3
    add-int/2addr v1, v2

    int-to-float p1, v1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 146
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 149
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method private createTabView(I)Landroid/view/View;
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/arcore/R$layout;->custom_tab_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 117
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->img_tab:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method private notifyDataSetChanged()V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 85
    :goto_0
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    .line 89
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->createTabView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v4, :cond_2

    .line 92
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->contentLeftMargin:I

    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemLeftMargin:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 94
    :cond_2
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemLeftMargin:I

    :goto_3
    if-eqz v3, :cond_3

    .line 98
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->contentRightMargin:I

    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemRightMargin:I

    add-int/2addr v3, v5

    goto :goto_4

    .line 100
    :cond_3
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemRightMargin:I

    .line 102
    :goto_4
    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;

    invoke-direct {v3, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_4
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mCurrentTabPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setSelectedTabView(I)V

    return-void
.end method

.method private setScrollPosition(IF)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mCurrentTabPosition:I

    .line 134
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mCurrentOffset:F

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 123
    :goto_0
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPageScrolled(IF)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setScrollPosition(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setSelectedTabView(I)V

    return-void
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public setContentMargin(II)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->contentLeftMargin:I

    .line 40
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->contentRightMargin:I

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setItemMargin(II)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemLeftMargin:I

    .line 45
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->itemRightMargin:I

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mTabCount:I

    .line 79
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->mCurrentTabPosition:I

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->notifyDataSetChanged()V

    return-void

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pagerAdapter not is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "viewpager not is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
