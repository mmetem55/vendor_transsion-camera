.class public Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;
.super Landroid/widget/LinearLayout;
.source "OSTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;,
        Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OSTabLayout"


# instance fields
.field private mBottomLine:Landroid/view/View;

.field private mIsFirstLevelTab:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

.field private mLlIconContainer:Landroid/widget/LinearLayout;

.field private mLlTabIconContainer:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOverflowButton:Landroid/widget/ImageView;

.field private mOverflowState:[Z

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/ListPopupWindow;

.field private mShowBottomLine:Z

.field private mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private mTabPaddingStart:I

.field private mTabScrollPaddingStart:I

.field private mTvLeftMask:Landroid/widget/TextView;

.field private mTvRightMask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_tab_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osShowBottomLine:I

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    .line 68
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osIsFirstLevelTab:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    const/4 v2, 0x1

    new-array v4, v2, [I

    .line 69
    sget v5, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    aput v5, v4, v3

    .line 70
    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 71
    sget v5, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 72
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    sget v4, Lcom/transsion/widgetslib/R$styleable;->OSTabLayout_osTabLayoutBackground:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 74
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-array p2, v2, [I

    .line 76
    sget v2, Lcom/transsion/widgetslib/R$attr;->tabPaddingStart:I

    aput v2, p2, v3

    .line 77
    sget v2, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_padding_start:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabPaddingStart:I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_tab_item_scroll_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    .line 81
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout_underline:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    .line 82
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mShowBottomLine:Z

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    sget p1, Lcom/transsion/widgetslib/R$id;->tablayout:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 88
    invoke-virtual {p1, p0}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->bindOSTabLayout(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    .line 90
    sget p1, Lcom/transsion/widgetslib/R$id;->overFlowButton:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    .line 91
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_icon_container:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    .line 92
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_left_mask:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    .line 94
    sget p1, Lcom/transsion/widgetslib/R$id;->tv_right_mask:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mIsFirstLevelTab:Z

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->isFirstLevelTab(Z)V

    .line 96
    sget p1, Lcom/transsion/widgetslib/R$id;->ll_tab_icon_container:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/View;

    .line 97
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)[Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Landroid/view/View;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->viewEnable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Landroid/widget/ListPopupWindow;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method private handleFilter()V
    .locals 5

    .line 203
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->isTabLayoutScroll()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 209
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-lez v0, :cond_2

    if-eqz v2, :cond_2

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvLeftMask:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTvRightMask:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initOverflowItemState(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isTabLayoutScroll()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private viewEnable(Landroid/view/View;Z)V
    .locals 0

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    .line 190
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getTabLayout()Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    return-object p0
.end method

.method protected handleInsets()V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->isTabLayoutScroll()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 235
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_second_underline_margin_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 237
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_for_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 251
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 253
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_padding_start_scrollable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabScrollPaddingStart:I

    sub-int/2addr v0, v1

    .line 257
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 258
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_edge_distance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_tab_overflow_image_margin_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_4
    move v1, v0

    .line 260
    :goto_2
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlTabIconContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 261
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v0, v3, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 123
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 126
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()V

    .line 226
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleInsets()V

    .line 227
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()V

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setCustomMenuView(Landroid/view/View;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    .line 332
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    .line 333
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mItemClickListener:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    return-void
.end method

.method public setOverFlowMenuItem(I)V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupItems:Ljava/util/List;

    .line 161
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->initOverflowItemState(Ljava/util/List;)V

    .line 162
    new-instance p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;)V

    .line 163
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$style;->OSTabOverflow:I

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    .line 164
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 167
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public setOverflowButtonVisible(Z)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOverflowImage(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOverflowItemState(IZ)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mOverflowState:[Z

    if-eqz p0, :cond_0

    .line 154
    aput-boolean p2, p0, p1

    :cond_0
    return-void
.end method

.method public setShowBottomLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->mBottomLine:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
