.class public Lcom/transsion/widgetslib/widget/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;,
        Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;,
        Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;,
        Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0xfa

.field private static final ANIM_TIME_FOR_TRANSITION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SearchBar"


# instance fields
.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackView:Landroid/widget/ImageView;

.field private mClickView:Landroid/widget/TextView;

.field private mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

.field private mCompleteInput:Z

.field private mCurrentRootWidth:I

.field private mCustomIconClickListener:Landroid/view/View$OnClickListener;

.field private mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteAll:Landroid/widget/ImageView;

.field private mDeleteMargin:I

.field private mFrameLayoutRoot:Landroid/view/View;

.field private mImgCustom:Landroid/widget/ImageView;

.field private mImgCustomInEdittext:Landroid/widget/ImageView;

.field private mIsBackMode:Z

.field private mIsIDLE:Z

.field private mIsSearStatusOnInitial:Z

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

.field private mLeftMargin:I

.field private mLinearRoot:Landroid/view/View;

.field private mLlDelCustomContainer:Landroid/widget/LinearLayout;

.field private mMoveWidth:I

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnSearch:Z

.field private mSearchBarClickListener:Landroid/view/View$OnClickListener;

.field private mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

.field private mSearchBarTextPaddingEnd:I

.field private mSearchBarTextPaddingEndWithDelIcon:I

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/AutoCompleteTextView;

.field private mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

.field private mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTipInputMax:Ljava/lang/String;

.field private mWidth0:I

.field private mWidth1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    .line 72
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$BackClickListener;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 326
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$6;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$6;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_search_bar_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_delete_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    .line 91
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 92
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isBackMode:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    .line 93
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_osSearchBarIconInEdittext:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    .line 94
    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSSearchBar_isSearStatusOnInitial:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsSearStatusOnInitial:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end_with_del_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEnd:I

    .line 97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V

    .line 100
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->preDraw()V

    .line 101
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealOsDiff()V

    .line 102
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 103
    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    .line 104
    new-instance p1, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsIDLE:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/widgetslib/widget/SearchBar;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsSearStatusOnInitial:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCompleteInput:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/SearchBar;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/SearchBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCurrentRootWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private applyDp(I)I
    .locals 1

    int-to-float p1, p1

    .line 674
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 673
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private backEnterAnim()V
    .locals 13

    .line 398
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    .line 399
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 400
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int v3, v3

    .line 401
    :goto_1
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    int-to-float v3, v3

    aput v3, v6, v1

    const/4 v3, 0x0

    aput v3, v6, v2

    const-string v7, "translationX"

    .line 402
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 404
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    new-array v8, v5, [I

    iget v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    aput v9, v8, v1

    iget v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    aput v9, v8, v2

    const-string v9, "width"

    .line 405
    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v0, :cond_2

    .line 407
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    neg-int v0, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 408
    :goto_2
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-array v9, v5, [F

    aput v3, v9, v1

    int-to-float v0, v0

    aput v0, v9, v2

    .line 409
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 411
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v10, v5, [F

    aput v3, v10, v1

    aput v0, v10, v2

    .line 412
    invoke-static {v9, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 414
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xfa

    .line 415
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 416
    new-instance v9, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v3, v11, v12}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v1

    aput-object v6, v3, v2

    aput-object v8, v3, v5

    const/4 v1, 0x3

    aput-object v0, v3, v1

    .line 417
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 419
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$8;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$8;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private backEnterAnimForTransition()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 487
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 436
    :goto_0
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    neg-int v4, v4

    .line 437
    :goto_1
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v7, v6, [F

    int-to-float v4, v4

    aput v4, v7, v2

    const/4 v4, 0x0

    aput v4, v7, v3

    const-string v8, "translationX"

    .line 438
    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 440
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    new-array v9, v6, [I

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    aput v10, v9, v2

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float v10, v10

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v9, v3

    const-string v10, "width"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 443
    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    if-eqz v1, :cond_2

    neg-int v9, v9

    .line 444
    :cond_2
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    new-array v11, v6, [F

    aput v4, v11, v2

    int-to-float v9, v9

    aput v9, v11, v3

    .line 445
    invoke-static {v10, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 447
    iget-object v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v12, v6, [F

    aput v4, v12, v2

    aput v9, v12, v3

    .line 448
    invoke-static {v11, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 450
    iget-object v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    new-array v11, v6, [F

    .line 451
    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x43

    .line 452
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v12, 0xb7

    .line 453
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    new-instance v12, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f28f5c3    # 0.66f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v4, v14, v15}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    new-instance v12, Lcom/transsion/widgetslib/widget/SearchBar$9;

    invoke-direct {v12, v0}, Lcom/transsion/widgetslib/widget/SearchBar$9;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v12, v6, [F

    aput v4, v12, v2

    move/from16 v13, p2

    neg-float v13, v13

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v13, v1

    aput v13, v12, v3

    .line 464
    invoke-static {v0, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 466
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v12, 0xfa

    .line 467
    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 468
    new-instance v12, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v12, v13, v4, v4, v15}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v5, v4, v2

    aput-object v7, v4, v3

    aput-object v10, v4, v6

    const/4 v2, 0x3

    aput-object v9, v4, v2

    const/4 v2, 0x4

    aput-object v11, v4, v2

    const/4 v2, 0x5

    aput-object v1, v4, v2

    .line 469
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 471
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$10;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/widget/SearchBar$10;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v8

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private backExitAnim()V
    .locals 13

    .line 498
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 499
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int v3, v3

    .line 500
    :goto_1
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    int-to-float v3, v3

    aput v3, v6, v2

    const-string v3, "translationX"

    .line 501
    invoke-static {v4, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 503
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    new-array v8, v5, [I

    iget v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    aput v9, v8, v1

    iget v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    aput v9, v8, v2

    const-string v9, "width"

    .line 504
    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v0, :cond_2

    .line 506
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    neg-int v0, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 507
    :goto_2
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-array v9, v5, [F

    int-to-float v0, v0

    aput v0, v9, v1

    aput v7, v9, v2

    .line 508
    invoke-static {v8, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 510
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v10, v5, [F

    aput v0, v10, v1

    aput v7, v10, v2

    .line 511
    invoke-static {v9, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 512
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xfa

    .line 513
    invoke-virtual {v3, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 514
    new-instance v9, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v7, v11, v12}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v1

    aput-object v6, v7, v2

    aput-object v8, v7, v5

    const/4 v1, 0x3

    aput-object v0, v7, v1

    .line 515
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 517
    new-instance v0, Lcom/transsion/widgetslib/widget/SearchBar$11;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/SearchBar$11;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 536
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private backExitAnimForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 542
    :goto_0
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    neg-int v4, v4

    .line 543
    :goto_1
    iget-object v5, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    int-to-float v4, v4

    aput v4, v7, v3

    const-string v4, "translationX"

    .line 544
    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 546
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickViewWidthWrapper:Lcom/transsion/widgetslib/widget/SearchBar$WidthWrapper;

    new-array v9, v6, [I

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float v10, v10

    .line 547
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getTransitionScale(F)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v9, v2

    iget v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    aput v10, v9, v3

    const-string v10, "width"

    invoke-static {v7, v10, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 549
    iget v9, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    if-eqz v1, :cond_2

    neg-int v9, v9

    .line 550
    :cond_2
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    new-array v11, v6, [F

    int-to-float v9, v9

    aput v9, v11, v2

    aput v8, v11, v3

    .line 551
    invoke-static {v10, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 553
    iget-object v11, v0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    new-array v12, v6, [F

    aput v9, v12, v2

    aput v8, v12, v3

    .line 554
    invoke-static {v11, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v11, v6, [F

    .line 556
    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v12, 0x64

    .line 557
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 558
    new-instance v12, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f28f5c3    # 0.66f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v8, v14, v15}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    new-instance v12, Lcom/transsion/widgetslib/widget/SearchBar$12;

    invoke-direct {v12, v0}, Lcom/transsion/widgetslib/widget/SearchBar$12;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v12, v6, [F

    move/from16 v13, p2

    neg-float v13, v13

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v13, v1

    aput v13, v12, v2

    aput v8, v12, v3

    .line 569
    invoke-static {v0, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 571
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v12, 0xfa

    .line 572
    invoke-virtual {v4, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 573
    new-instance v12, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v12, v13, v8, v8, v15}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v5, v8, v2

    aput-object v7, v8, v3

    aput-object v10, v8, v6

    const/4 v2, 0x3

    aput-object v9, v8, v2

    const/4 v2, 0x4

    aput-object v11, v8, v2

    const/4 v2, 0x5

    aput-object v1, v8, v2

    .line 574
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 576
    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$13;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/widget/SearchBar$13;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private dealCusIconInEdittextMargin()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_element_common_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 149
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private dealDeleteIconVisibility()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 616
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 617
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 618
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->isSearchBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealCusIconInEdittextMargin()V

    return-void
.end method

.method private dealOsDiff()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 154
    sget v1, Lcom/transsion/widgetslib/R$attr;->osSearchBarMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_hios:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_margin_xos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 164
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private dealSearchViewTextPadding()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 111
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->isSearchBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 114
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_element_common_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_search_cus_icon_in_edittext_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEnd:I

    .line 119
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarTextPaddingEndWithDelIcon:I

    .line 123
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 124
    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 126
    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v4

    .line 123
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    .line 128
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end_with_del_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_search_bar_text_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 133
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealCusIconInEdittextMargin()V

    return-void
.end method

.method private dealSearchViewWidthDiff()V
    .locals 3

    .line 491
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 492
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 493
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    :cond_0
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$1;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$2;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$3;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$4;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$5;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 168
    sget v0, Lcom/transsion/widgetslib/R$id;->text_click:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/transsion/widgetslib/R$id;->relative_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    .line 170
    sget v0, Lcom/transsion/widgetslib/R$id;->linear_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLinearRoot:Landroid/view/View;

    .line 171
    sget v0, Lcom/transsion/widgetslib/R$id;->text_search:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    .line 172
    sget v0, Lcom/transsion/widgetslib/R$id;->img_btn_back:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    .line 173
    sget v0, Lcom/transsion/widgetslib/R$id;->img_search_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    .line 174
    sget v0, Lcom/transsion/widgetslib/R$id;->img_delete_all:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    .line 175
    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/transsion/widgetslib/R$id;->ll_del_custom_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    .line 177
    sget v0, Lcom/transsion/widgetslib/R$id;->img_custom_in_edittext:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    .line 178
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsBackMode:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->showSoftInput()V

    :cond_1
    return-void
.end method

.method private preDraw()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/SearchBar$7;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/SearchBar$7;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private showSoftInput()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 607
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 609
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private syncComponentMargin(Z)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 283
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    .line 284
    :cond_0
    iget v4, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    iget v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    if-eqz p1, :cond_2

    .line 286
    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteMargin:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    add-int/2addr p1, v3

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 287
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLlDelCustomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public endSearch()V
    .locals 3

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    .line 633
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 634
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 635
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 637
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->backExitAnim()V

    .line 638
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    if-eqz p0, :cond_0

    .line 639
    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;->onSearchEnd()V

    :cond_0
    return-void
.end method

.method public endSearchForTransition()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public endSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 0

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->backExitAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method public getLinearRootView()Landroid/view/View;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLinearRoot:Landroid/view/View;

    return-object p0
.end method

.method public getRightIconVisibility()Z
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTransitionScale(F)F
    .locals 2

    .line 915
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 916
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 918
    sget-object p1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    .line 919
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 920
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    .line 922
    iget p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public isOnSearch()Z
    .locals 0

    .line 644
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    return p0
.end method

.method public isSearchBarEnabled()Z
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 827
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 828
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 833
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 834
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 835
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public removeTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .line 669
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 253
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCustomIconInEdittextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconInEdittextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setCustomSearchIcon(I)V
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mDeleteAll:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 653
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputMax(II)V
    .locals 1

    .line 843
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->setInputMax(ILjava/lang/String;)V

    return-void
.end method

.method public setInputMax(ILjava/lang/String;)V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIsIDLE(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mIsIDLE:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mItemClickListener:Lcom/transsion/widgetslib/widget/SearchBar$OnItemClickListener;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    return-void
.end method

.method public setRightIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/SearchBar;->setRightIcon(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightIcon(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 270
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCustomIconClickListener:Landroid/view/View$OnClickListener;

    .line 271
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->syncComponentMargin(Z)V

    return-void
.end method

.method public setRightIconVisibility(Z)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustom:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->syncComponentMargin(Z)V

    return-void
.end method

.method public setRootWidth(I)V
    .locals 0

    .line 911
    iput p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    return-void
.end method

.method public setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSearchBarEnabled(Z)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 805
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 808
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 809
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAlpha(F)V

    .line 810
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 811
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAlpha(F)V

    .line 814
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 815
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 817
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 818
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSearchBarIconInEdittext(I)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->setSearchBarIconInEdittext(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSearchBarIconInEdittext(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 891
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchBarIconInEdittext:Landroid/graphics/drawable/Drawable;

    .line 892
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 895
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 896
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mImgCustomInEdittext:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    return-void
.end method

.method public setSearchSource(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 657
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_search_source_item_layout:I

    sget v2, Lcom/transsion/widgetslib/R$id;->search_item_text:I

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 659
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 791
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCompleteInput:Z

    .line 792
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 794
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    const/4 p1, 0x0

    .line 795
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCompleteInput:Z

    if-eqz p2, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    :cond_0
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mTextWatcher:Landroid/text/TextWatcher;

    .line 309
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public startSearch()V
    .locals 2

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mOnSearch:Z

    .line 592
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 594
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnim()V

    .line 595
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->showSoftInput()V

    .line 596
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    .line 597
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V

    .line 598
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mStateChangeListener:Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;

    if-eqz p0, :cond_0

    .line 599
    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/SearchBar$OnStateChangeListener;->onSearchStart()V

    :cond_0
    return-void
.end method

.method public startSearchForTransition()Landroid/animation/AnimatorSet;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 694
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public startSearchForTransition(FF)Landroid/animation/AnimatorSet;
    .locals 0

    .line 690
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->backEnterAnimForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public syncDimens()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mCurrentRootWidth:I

    .line 341
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    .line 342
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 343
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    .line 344
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V

    .line 345
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    if-eq v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 348
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 349
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :cond_0
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setTranslationX(F)V

    .line 353
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    if-eq v0, v1, :cond_3

    .line 357
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 358
    iget v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V

    return-void
.end method

.method public updateEnterForTransition()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 710
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateExitForTransition()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 718
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 719
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
