.class public Lcom/transsion/widgetslib/widget/FootOperationBar;
.super Landroid/widget/RelativeLayout;
.source "FootOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/FootOperationBar$RedPointType;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;,
        Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x96

.field private static final DEFAULT_MAX_VISIBLE_TAB_COUNT:I = 0x5

.field private static final DEFAULT_MIN_VISIBLE_TAB_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFootActionBar:Z

.field private mAnim:Z

.field private mBgColor:I

.field private mBlurAlp:F

.field private mClickImageTintColor:I

.field private mClickTextColor:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

.field private mFootItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveClickImageTintColor:Z

.field private mHaveNormalImageTintColor:Z

.field private mHaveTextColor:Z

.field private mInitShow:Z

.field private mIsLandscape:Z

.field private mItemBackgroundRes:I

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

.field private mMaxVisibleTabCount:I

.field private mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuEnables:[Z

.field private mMoreIconRes:I

.field private mMoreView:Landroid/view/View;

.field private final mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

.field private mNormalImageTintColor:I

.field private mOrientation:I

.field private mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShow:Z

.field private final mTabHitDelegateExpend:I

.field private final mTabParentHitDelegateInsert:I

.field private mTextColor:I

.field private mTintColor:I

.field private mVisibleTabCount:I

.field private needChangeImgColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 85
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v2, -0x1

    .line 106
    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    const v3, 0x3f4ccccd    # 0.8f

    .line 107
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    .line 118
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_root:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 120
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_container:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    .line 122
    sget-object v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 125
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_isFootActionBar:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    .line 126
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_need_change_img_color:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    .line 128
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_background:I

    sget v4, Lcom/transsion/widgetslib/R$drawable;->os_foot_option_bar_item_bg:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemBackgroundRes:I

    .line 129
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_item_icon_tint:I

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$color;->os_fill_icon_primary_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTintColor:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 130
    sget v4, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    aput v4, v3, v0

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_foot_more:I

    aput v4, v3, v1

    .line 131
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 132
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 133
    sget v6, Lcom/transsion/widgetslib/R$drawable;->os_ic_foot_more_hios:I

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    .line 134
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x33

    .line 137
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 138
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 139
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 138
    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 140
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/widgetslib/R$color;->os_text_primary_color:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 141
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    goto :goto_0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$color;->os_fill_icon_secondary_color:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 144
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 146
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 147
    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 150
    :goto_0
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_image_color:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveClickImageTintColor:Z

    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 154
    :cond_1
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_normal_image_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveNormalImageTintColor:Z

    if-eqz v3, :cond_2

    const/high16 v3, -0x10000

    .line 156
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 158
    :cond_2
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mHaveTextColor:Z

    if-eqz v3, :cond_3

    .line 160
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_secondary_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 162
    :cond_3
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_click_text_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 166
    :cond_4
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_max_visible_tab_count:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 168
    iput v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    .line 170
    :cond_5
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_landscape:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    .line 171
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initDefaultParameter(Landroid/content/Context;)V

    .line 174
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_opt_menu:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->inflateMenu(I)V

    .line 177
    :cond_6
    sget p1, Lcom/transsion/widgetslib/R$styleable;->FootOperationBar_foot_init_show:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    .line 178
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    .line 181
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 187
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    const/high16 p1, 0x40c00000    # 6.0f

    .line 188
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    .line 190
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/FootOperationBar;)[Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    return p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    return p0
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/LinearLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabParentHitDelegateInsert:I

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/widgetslib/widget/FootOperationBar;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTabHitDelegateExpend:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return p1
.end method

.method private addItemView(Landroid/view/View;I)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 371
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    .line 372
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$2;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar$2;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 338
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 340
    invoke-direct {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addItemView([I[Ljava/lang/String;I)V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 360
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 362
    invoke-direct {p0, v1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 864
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 865
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 866
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 867
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$10;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$10;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    .line 1242
    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar$13;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getMenuItem(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .line 543
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_foot_action_bar_item:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    .line 545
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_foot_opt_bar_item:I

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    .line 548
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 550
    :goto_0
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 551
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 554
    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 555
    sget v5, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 556
    iget-boolean v6, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-nez v6, :cond_1

    const/high16 v6, 0x41200000    # 10.0f

    .line 557
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    if-eqz p1, :cond_2

    .line 560
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 561
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    .line 564
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 565
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    .line 569
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_4

    .line 570
    new-instance p1, Lcom/transsion/widgetslib/widget/FootOperationBar$5;

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/transsion/widgetslib/widget/FootOperationBar$5;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 597
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x40800000    # 4.0f

    .line 598
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v4, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v5, p0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 600
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_item_text_paddingTop:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v5, p0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    return-object v0
.end method

.method private initDefaultParameter(Landroid/content/Context;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 228
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_quaternary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    .line 231
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-nez p1, :cond_2

    .line 232
    sget p1, Lcom/transsion/widgetslib/R$id;->os_fob_top_line_stub:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    .line 238
    :cond_1
    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    .line 240
    :cond_2
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 244
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 246
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 248
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 249
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 250
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    if-eqz p1, :cond_6

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_6

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4

    move v1, v0

    move p1, v3

    goto :goto_1

    .line 264
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 265
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    goto :goto_1

    .line 258
    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 260
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_min_height_curve_land:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    move v6, v1

    move v1, p1

    move p1, v6

    goto :goto_1

    .line 254
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int v1, p1, v0

    move p1, v1

    .line 269
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 273
    :cond_7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMinimumHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private openAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 844
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 845
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 846
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 847
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$9;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$9;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 860
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private redPointHideAnim(Landroid/view/View;)V
    .locals 5

    .line 1122
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1126
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    .line 1127
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$12;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$12;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;)V

    .line 1128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1137
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setContainerBgColor()V
    .locals 4

    .line 1078
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 1079
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1080
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 1083
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 1084
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 1085
    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$11;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$11;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/graphics/Paint;ILandroid/graphics/drawable/ShapeDrawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setContainerWidth(I)V
    .locals 5

    .line 506
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    const v4, 0x418547ae    # 16.66f

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 526
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 527
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 528
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_curve_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_4

    .line 523
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_1

    const p1, 0x418d47ae    # 17.66f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41200000    # 10.0f

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_3

    .line 520
    :cond_2
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v4, 0x41800000    # 16.0f

    :goto_1
    invoke-static {v1, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_3

    .line 517
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_3

    .line 514
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_7

    const v3, 0x4242a3d7    # 48.66f

    :cond_7
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_3

    .line 511
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-eqz p1, :cond_9

    const/high16 p1, 0x43520000    # 210.0f

    goto :goto_2

    :cond_9
    const/high16 p1, 0x42c60000    # 99.0f

    :goto_2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    :goto_3
    float-to-int p1, p1

    .line 532
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 533
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 534
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p1, v1, p1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private setFootPopupWindow()V
    .locals 5

    .line 782
    new-instance v0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Lcom/transsion/widgetslib/widget/FootOperationBar$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    .line 783
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$style;->OsFootOptPopupEdgeStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 784
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 785
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result v0

    .line 786
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 787
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 788
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$7;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$7;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 794
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 795
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 798
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 800
    new-instance v1, Lcom/transsion/widgetslib/widget/FootOperationBar$8;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$8;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 834
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_0_180:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_270:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 831
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 826
    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_foot_opt_popup_background_curse_90:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 827
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_curse_offset_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 838
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 839
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private setImageColorStateList(Landroid/widget/ImageView;)V
    .locals 6

    .line 610
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 612
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-array v2, v3, [I

    const v5, 0x10100a7

    aput v5, v2, v4

    aput-object v2, v1, v4

    goto :goto_0

    :cond_0
    new-array v2, v3, [I

    const v5, 0x10100a1

    aput v5, v2, v4

    aput-object v2, v1, v4

    :goto_0
    new-array v2, v4, [I

    aput-object v2, v1, v3

    new-array v0, v0, [I

    .line 618
    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    aput v2, v0, v4

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    aput p0, v0, v3

    .line 619
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private setItemSelectState(IZ)V
    .locals 6

    .line 442
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 445
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 446
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/OSMaskImageView;

    if-ne v1, p1, :cond_4

    .line 448
    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->isSelectedAnimRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 453
    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v5, :cond_8

    .line 455
    new-instance v5, Lcom/transsion/widgetslib/widget/FootOperationBar$4;

    invoke-direct {v5, p0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar$4;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4, v5}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_2

    .line 464
    :cond_1
    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v5, :cond_2

    return-void

    .line 468
    :cond_2
    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelected(Z)V

    .line 469
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 472
    :cond_4
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v4, :cond_5

    return-void

    .line 476
    :cond_5
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->isSelectedAnimRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 477
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->cancelSelectedAnimRunning()V

    .line 479
    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_7

    .line 481
    invoke-virtual {v3}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 482
    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelectedAnim(Z)V

    goto :goto_2

    .line 485
    :cond_7
    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelected(Z)V

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method private setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 307
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 308
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 309
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 312
    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    .line 313
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    .line 315
    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 317
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    .line 319
    new-instance v3, Lcom/transsion/widgetslib/widget/FootOperationBar$1;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$1;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupItems(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    goto :goto_2

    .line 310
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroidx/appcompat/view/menu/MenuBuilder;I)V

    :goto_2
    return-void
.end method

.method private setPopupItems(Landroidx/appcompat/view/menu/MenuBuilder;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 494
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    .line 496
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    :goto_1
    if-ge v0, p2, :cond_1

    .line 498
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 499
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v3, v0, v3

    aput-boolean v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    return-void
.end method

.method private setPopupItems([Ljava/lang/String;I)V
    .locals 4

    .line 726
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v1, p2, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    :goto_0
    if-ge v0, p2, :cond_0

    .line 728
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    sub-int v2, v0, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V

    return-void
.end method

.method private setTextColorStateList(Landroid/widget/TextView;)V
    .locals 6

    .line 624
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->needChangeImgColor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 626
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-array v2, v3, [I

    const v5, 0x10100a7

    aput v5, v2, v4

    aput-object v2, v1, v4

    goto :goto_0

    :cond_0
    new-array v2, v3, [I

    const v5, 0x10100a1

    aput v5, v2, v4

    aput-object v2, v1, v4

    :goto_0
    new-array v2, v4, [I

    aput-object v2, v1, v3

    new-array v0, v0, [I

    .line 632
    iget v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    aput v2, v0, v4

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    aput p0, v0, v3

    .line 633
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private viewEnable(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 770
    sget p0, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    if-nez p0, :cond_1

    .line 772
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 773
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 776
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 777
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addSingleItemView(III)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 424
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    .line 426
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    .line 427
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public changeFootItem(III)V
    .locals 1

    .line 672
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(IILjava/lang/String;)V

    return-void
.end method

.method public changeFootItem(IILjava/lang/String;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 655
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    .line 663
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public changeFootItem(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeFootItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public changeItemEnable(IZ)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    goto :goto_0

    .line 748
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    if-ge p1, v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    goto :goto_0

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuEnables:[Z

    sub-int/2addr p1, v0

    aput-boolean p2, v1, p1

    .line 752
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopAdapter:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    if-eqz p0, :cond_2

    .line 753
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public changeItems([I[I)V
    .locals 4

    .line 684
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 685
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[Ljava/lang/String;)V

    return-void
.end method

.method public changeItems([I[Ljava/lang/String;)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 696
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 697
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    .line 699
    array-length v0, p1

    .line 700
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 701
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMaxVisibleTabCount:I

    add-int/lit8 v2, v1, -0x1

    if-gt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 704
    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mVisibleTabCount:I

    .line 705
    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView([I[Ljava/lang/String;I)V

    .line 707
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreIconRes:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$string;->os_foot_opt_bar_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 709
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    .line 711
    new-instance v2, Lcom/transsion/widgetslib/widget/FootOperationBar$6;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar$6;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    invoke-direct {p0, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setPopupItems([Ljava/lang/String;I)V

    goto :goto_2

    .line 702
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView([I[Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public changeItemsEnable([Z)V
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 738
    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 740
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public closeDynamicBlur()V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->stopBlurred()V

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    :cond_0
    return-void
.end method

.method public closeDynamicBlurWithRestoreBackground()V
    .locals 1

    .line 1111
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    .line 1112
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public closeFootOperationBar()V
    .locals 2

    .line 894
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x1

    .line 901
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 902
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 903
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeAnimator()V

    :cond_2
    return-void
.end method

.method public enableMore(Z)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->viewEnable(Landroid/view/View;Z)V

    if-nez p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 763
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expendTabTouchDelegate()V
    .locals 4

    .line 1270
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1271
    sget v2, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Lcom/transsion/widgetslib/blur/DynamicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    .line 1071
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getOsBgPrimary(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setEraseColor(I)V

    .line 1072
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurView(Landroid/view/View;)V

    .line 1074
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopupItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 922
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemImageView(I)Landroid/widget/ImageView;
    .locals 0

    .line 644
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 645
    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    :goto_0
    return-object p0
.end method

.method public getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1152
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1153
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_stub_fpb_red_point:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    .line 1154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1156
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1157
    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_3

    .line 1158
    move-object v1, p0

    check-cast v1, Lcom/transsion/widgetslib/view/BadgeView;

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getItemTextView(I)Landroid/widget/TextView;
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 651
    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    :goto_0
    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hasItemRedPoint(I)Z
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->isFootActionBar:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1226
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_bar_item_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 1227
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1228
    instance-of p1, p0, Lcom/transsion/widgetslib/view/BadgeView;

    if-eqz p1, :cond_2

    .line 1229
    check-cast p0, Lcom/transsion/widgetslib/view/BadgeView;

    .line 1230
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public inflateMenu(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 297
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 298
    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 299
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public initShow(Z)V
    .locals 0

    .line 916
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mInitShow:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 934
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 935
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->updateFootBarView()V

    .line 937
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz p1, :cond_2

    .line 941
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 942
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMyOnPreDrawListener:Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 946
    :cond_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mOrientation:I

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1117
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1118
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeDynamicBlur()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 219
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initDefaultParameter(Landroid/content/Context;)V

    return-void
.end method

.method public openFootOperationBar()V
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 883
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    .line 884
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    .line 885
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openAnimator()V

    :cond_0
    return-void
.end method

.method public removeItemView(I)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 348
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->resetClickListener()V

    .line 349
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 350
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetClickListener()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 394
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 398
    sget v3, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 399
    invoke-direct {p0, v3, v2, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->expendTabTouchDelegate(Landroid/view/View;Landroid/view/View;Z)V

    .line 400
    new-instance v2, Lcom/transsion/widgetslib/widget/FootOperationBar$3;

    invoke-direct {v2, p0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar$3;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreTabTouchDelegate()V
    .locals 4

    .line 1279
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mFootItemViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1280
    sget v1, Lcom/transsion/widgetslib/R$id;->os_fob_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1282
    instance-of v3, v2, Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 1283
    check-cast v2, Landroid/graphics/Rect;

    .line 1284
    new-instance v3, Landroid/view/TouchDelegate;

    invoke-direct {v3, v2, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnim(Z)V
    .locals 0

    .line 890
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mAnim:Z

    return-void
.end method

.method public setBlurAlp(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 1057
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBlurAlp:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setClickImageTintColor(I)V
    .locals 1

    .line 990
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setContainerBackground(I)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    .line 287
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 289
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mDynamicBlur:Lcom/transsion/widgetslib/blur/DynamicBlur;

    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBgColor()V

    :cond_0
    return-void
.end method

.method public setContainerBackgroundNoOverlay(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    return-void
.end method

.method public setFootOptBarClickTextColor(I)V
    .locals 1

    .line 963
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setFootOptBarTextColor(I)V
    .locals 1

    .line 958
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextTintColor(II)V

    return-void
.end method

.method public setImageTintColor(II)V
    .locals 1

    .line 977
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mNormalImageTintColor:I

    .line 978
    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    .line 979
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 981
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageColorStateList(Landroid/widget/ImageView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemRedPointState(IZII)V
    .locals 0

    .line 1174
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/BadgeView;->getRedPointType()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 1180
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/BadgeView;->setRedPointType(I)V

    :cond_1
    if-lez p4, :cond_2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 1183
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 1185
    invoke-virtual {p0, p4}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setItemSelectState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(IZ)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1294
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z

    .line 1295
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    .line 1296
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    :cond_1
    return-void
.end method

.method public setNormalImageTintColor(I)V
    .locals 1

    .line 986
    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickImageTintColor:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setImageTintColor(II)V

    return-void
.end method

.method public setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    return-void
.end method

.method public setTextTintColor(II)V
    .locals 1

    .line 968
    iput p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mTextColor:I

    .line 969
    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mClickTextColor:I

    .line 970
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 972
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setTextColorStateList(Landroid/widget/TextView;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTopLineVisible(I)V
    .locals 1

    .line 1301
    sget v0, Lcom/transsion/widgetslib/R$id;->os_fob_top_line:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1303
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public toggleDynamicBlur(Landroid/view/View;)V
    .locals 3

    .line 1061
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 1062
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getDynamicBlur()Lcom/transsion/widgetslib/blur/DynamicBlur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->setBlurredView(Landroid/view/View;)V

    .line 1064
    iget p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public toggleFootOperationBar()V
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mShow:Z

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    :goto_0
    return-void
.end method

.method public updateFootBarView()V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerWidth(I)V

    .line 927
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateItemRedPointNum(II)V
    .locals 0

    .line 1196
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemRedPoint(I)Lcom/transsion/widgetslib/view/BadgeView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-gtz p2, :cond_1

    .line 1202
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->redPointHideAnim(Landroid/view/View;)V

    goto :goto_0

    .line 1204
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 1205
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/BadgeView;->setNum(I)Ljava/lang/String;

    :goto_0
    return-void
.end method
