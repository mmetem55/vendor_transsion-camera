.class public Lcom/transsion/widgetslib/view/damping/DampingLayout;
.super Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.source "DampingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;,
        Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final REFRESHING_DELTA_ALPHA:F = 1.0f

.field private static final REFRESHING_DELTA_SCALE:F = 0.5f

.field private static final REFRESHING_DELTA_SCALE_LOADING_VIEW:F = 0.8f

.field private static final REFRESHING_START_ALPHA:F = 0.0f

.field private static final REFRESHING_START_SCALE:F = 0.5f

.field private static final REFRESHING_START_SCALE_LOADING_VIEW:F = 0.2f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimRefreshFinish:Landroid/animation/ValueAnimator;

.field private mAnimScrollBarFade:Landroid/animation/ValueAnimator;

.field private mAnimatorUnfold:Landroid/animation/ValueAnimator;

.field private mBarCanSlideDistance:I

.field private final mBarMarginRight:I

.field private final mBarMarginTop:I

.field private mBarMinLen:I

.field private mBarPullMinLen:I

.field private mBarWidth:I

.field private mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

.field private mDampingLayoutHeight:I

.field private mDampingMode:I

.field private mHasScrollBar:Z

.field private mHeightRefreshLayout:I

.field private mIsAbortRefreshing:Z

.field private mIsLimitDampingEdge:Z

.field private mIsRefreshing:Z

.field private mLayoutContent:Landroid/view/View;

.field private mLayoutContentCanSlideDistance:I

.field private mLayoutContentHeight:I

.field private mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

.field private mLoadingViewHeight:I

.field private mLoadingViewTransDistance:F

.field private mOffsetY:F

.field private mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

.field private mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field private mOverScrollDistance:F

.field private final mRect:Landroid/graphics/Rect;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mRunnableFade:Ljava/lang/Runnable;

.field private mTextRefreshing:Landroid/widget/TextView;

.field private mTextRefreshingTransDistance:F

.field private mUseScene:I

.field private mViewScrollBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    .line 729
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->DampingLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_mode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    .line 92
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_use_scene:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    .line 93
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_right:I

    const/4 p3, 0x1

    const/high16 v1, 0x40c00000    # 6.0f

    .line 94
    invoke-static {p3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 93
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    .line 95
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_top:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    .line 96
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_width:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 97
    invoke-static {p3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    .line 98
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_limit_damping_edge:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsLimitDampingEdge:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->handleOverScrollDistance(F)V

    return-void
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Lcom/transsion/widgetslib/view/LoadingView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/damping/DampingLayout;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshTitleLayout(F)V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    return p1
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private getBarLayoutAttach()Landroid/view/ViewGroup;
    .locals 5

    .line 680
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 681
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 683
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 687
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 688
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 689
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 690
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 691
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 700
    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method

.method private handleOverScrollDistance(F)V
    .locals 1

    .line 166
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->onOverPull(F)V

    .line 169
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    .line 171
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 174
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    :cond_0
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 241
    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 242
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 244
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_down_pull_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshTitleLayout(F)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_release_for_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 249
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->playAnimatorUnfold()V

    goto :goto_0

    .line 256
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_6

    .line 257
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    .line 258
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refreshing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/LoadingView;->start()V

    .line 261
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->playAnimatorUnfold()V

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

    if-nez p1, :cond_5

    .line 266
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_4

    .line 267
    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    .line 274
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 278
    :cond_5
    invoke-interface {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;->onRefresh()V

    goto :goto_0

    .line 281
    :cond_6
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    :cond_7
    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    .line 106
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 107
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewTransDistance:F

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_view:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewHeight:I

    .line 113
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 115
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    const/high16 v2, 0x42700000    # 60.0f

    .line 116
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    .line 124
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private initAnimScrollBarFade()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 464
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    .line 465
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollBarFadeDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 467
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$8;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initUpOverScroll()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_1

    return-void

    .line 154
    :cond_1
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$2;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    .line 160
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {v1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    .line 162
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->onEdgeEffect()V

    return-void
.end method

.method private onEdgeEffect()V
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 485
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 487
    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    .line 508
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_1

    .line 510
    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$10;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$10;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_1
    return-void
.end method

.method private onOverPull(F)V
    .locals 4

    .line 531
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 533
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 539
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    .line 541
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 542
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    if-gt v0, v1, :cond_3

    .line 543
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 546
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 547
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v1, v0, :cond_3

    sub-int/2addr v0, v2

    .line 548
    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 551
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 552
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 553
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    .line 555
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method private playAnimatorUnfold()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [F

    .line 338
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    aput v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v3, v3

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 344
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$5;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private refreshFinishAnim()V
    .locals 6

    .line 361
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    if-nez v2, :cond_1

    new-array v2, v3, [F

    .line 367
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 368
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$6;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 381
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 394
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private refreshTitleLayout(F)V
    .locals 5

    .line 399
    :try_start_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    .line 404
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 405
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 406
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 408
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshingTransDistance:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 411
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 413
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 414
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingViewTransDistance:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    move p1, v1

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    const v2, 0x3e4ccccd    # 0.2f

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 418
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 419
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 420
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 422
    sget-object p1, Lcom/transsion/widgetslib/view/damping/DampingLayout;->TAG:Ljava/lang/String;

    const-string v0, "refreshTitleLayout, error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private releaseResource()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimatorUnfold:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 321
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private sendScrollBarFadeMsg()V
    .locals 3

    .line 716
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 725
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRunnableFade:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private translateScrollBar(I)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 741
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    .line 743
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 744
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 748
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentCanSlideDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 749
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 751
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 3

    .line 290
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    .line 292
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsAbortRefreshing:Z

    .line 297
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    .line 298
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-nez v0, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 235
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 561
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result p1

    .line 567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-lez v0, :cond_e

    if-ge v0, p1, :cond_e

    if-eqz v1, :cond_e

    .line 571
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 581
    :cond_0
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentHeight:I

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingLayoutHeight:I

    if-ne v3, v0, :cond_1

    return-void

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-nez v3, :cond_3

    .line 586
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->getBarLayoutAttach()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 591
    :cond_2
    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    .line 592
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 593
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    const-string v5, "#7FA1A1A1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 594
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 597
    :cond_3
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 598
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    sub-int/2addr v3, v5

    .line 599
    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_4

    neg-int v3, v3

    :cond_4
    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 600
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    goto/16 :goto_4

    :cond_5
    new-array v3, v4, [I

    .line 603
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget v6, v3, v2

    aget v3, v3, v5

    .line 608
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    sub-int/2addr v7, v8

    .line 609
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 611
    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 612
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 613
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 614
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v4, :cond_6

    .line 615
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 616
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 617
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v8

    goto :goto_0

    :cond_6
    move v8, v2

    .line 620
    :goto_0
    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    add-int/2addr v6, v9

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginRight:I

    add-int/2addr v6, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v6, v8

    goto :goto_1

    :cond_7
    move v8, v2

    .line 625
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v9, "status_bar_height"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    .line 628
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_2

    :cond_8
    move v6, v2

    .line 630
    :goto_2
    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 631
    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->getHeight()I

    move-result v9

    goto :goto_3

    :cond_9
    move v9, v2

    :goto_3
    sub-int v6, v3, v6

    sub-int/2addr v6, v9

    int-to-float v6, v6

    .line 633
    iput v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    .line 635
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 636
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 637
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v6, v5, :cond_a

    int-to-float v3, v3

    .line 638
    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOffsetY:F

    sub-int/2addr v7, v8

    .line 643
    :cond_a
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    int-to-float v5, v7

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 647
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 649
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 650
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 651
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 652
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    if-ge v1, v5, :cond_c

    if-le v5, v0, :cond_b

    .line 654
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    .line 656
    :cond_b
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMinLen:I

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 658
    :cond_c
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sub-int v1, p1, v0

    .line 660
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentCanSlideDistance:I

    .line 661
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v1, v0, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarMarginTop:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    if-gez v1, :cond_d

    .line 663
    iput v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarCanSlideDistance:I

    .line 665
    :cond_d
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContentHeight:I

    .line 666
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingLayoutHeight:I

    .line 668
    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 675
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->translateScrollBar(I)V

    return-void

    .line 572
    :cond_e
    :goto_5
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_f

    .line 573
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    .line 574
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 577
    :cond_f
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHasScrollBar:Z

    return-void
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/LoadingView;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method public isRefreshing()Z
    .locals 0

    .line 431
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsRefreshing:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onAttachedToWindow()V

    .line 132
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 135
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 223
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->releaseResource()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    .line 190
    invoke-virtual {v2, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 191
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 193
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    if-nez v2, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    .line 196
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mCubicInterpolator:Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    .line 198
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 202
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mHeightRefreshLayout:I

    const/4 v6, -0x1

    invoke-virtual {v3, v2, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 204
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLayoutContent:Landroid/view/View;

    invoke-virtual {v3, v2, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 205
    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    sget v1, Lcom/transsion/widgetslib/R$id;->damping_text_loading:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 209
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 210
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 212
    sget v1, Lcom/transsion/widgetslib/R$id;->loading_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/LoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    const v2, 0x3e4ccccd    # 0.2f

    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 214
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 215
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 216
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mLoadingView:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->setAutoAnim(Z)V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 710
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onScrollChanged(IIII)V

    .line 711
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->translateScrollBar(I)V

    .line 712
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 4

    .line 757
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_2

    .line 759
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->initAnimScrollBarFade()V

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 763
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 766
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 767
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 769
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 810
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarWidth:I

    return-void
.end method

.method public setDampingMode(I)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mDampingMode:I

    return-void
.end method

.method public setLimitDampingEdge(Z)V
    .locals 0

    .line 818
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mIsLimitDampingEdge:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/DampingLayout$OnRefreshListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mTextRefreshing:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setUseScene(I)V
    .locals 0

    .line 814
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->mUseScene:I

    return-void
.end method
