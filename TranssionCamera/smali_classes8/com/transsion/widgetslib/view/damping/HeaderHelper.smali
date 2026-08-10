.class public Lcom/transsion/widgetslib/view/damping/HeaderHelper;
.super Ljava/lang/Object;
.source "HeaderHelper.java"


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final REFRESHING_DELTA_ALPHA:F = 1.0f

.field private static final REFRESHING_DELTA_SCALE:F = 1.0f

.field private static final REFRESHING_DELTA_SCALE_LOADING_VIEW:F = 0.8f

.field private static final REFRESHING_START_ALPHA:F = 0.0f

.field private static final REFRESHING_START_SCALE:F = 0.0f

.field private static final REFRESHING_START_SCALE_LOADING_VIEW:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HeaderHelper"


# instance fields
.field private mAnimRefreshFinish:Landroid/animation/ValueAnimator;

.field private final mContext:Landroid/content/Context;

.field private mHeightRefreshLayout:I

.field private mIsAbortRefreshing:Z

.field private mIsRefreshing:Z

.field private mLayoutHeader:Landroid/view/View;

.field private mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

.field private mLoadingViewHeight:I

.field private mLoadingViewTransDistance:F

.field private mMinHeight:I

.field private mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;

.field private mOverScrollDistance:F

.field private mRunnable:Ljava/lang/Runnable;

.field private mTextRefreshing:Landroid/widget/TextView;

.field private mTextRefreshingTransDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/damping/HeaderHelper;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->updateHeaderLayoutParams(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshTitleLayout(F)V

    return-void
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$702(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsAbortRefreshing:Z

    return p1
.end method

.method private cancelAnim(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 125
    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOverScrollDistance:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 126
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    float-to-int p1, p1

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->updateHeaderLayoutParams(I)V

    .line 128
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_down_pull_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOverScrollDistance:F

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshTitleLayout(F)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_release_for_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->playAnimatorUnfold()V

    goto :goto_0

    .line 138
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOverScrollDistance:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 139
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    .line 140
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refreshing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->playAnimatorUnfold()V

    .line 151
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;

    if-nez p1, :cond_4

    .line 152
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 153
    new-instance p1, Lcom/transsion/widgetslib/view/damping/HeaderHelper$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$3;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mRunnable:Ljava/lang/Runnable;

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 161
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 164
    :cond_4
    invoke-interface {p1}, Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;->onRefresh()V

    goto :goto_0

    .line 167
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    .line 59
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshingTransDistance:F

    const/high16 v3, 0x40c00000    # 6.0f

    .line 60
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingViewTransDistance:F

    .line 62
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    .line 63
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingViewHeight:I

    .line 64
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshingTransDistance:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshingTransDistance:F

    return-void
.end method

.method private playAnimatorUnfold()V
    .locals 1

    .line 203
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->updateHeaderLayoutParams(I)V

    .line 204
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshTitleLayout(F)V

    return-void
.end method

.method private refreshFinishAnim(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    new-array v0, v1, [F

    .line 213
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    .line 214
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$anim;->os_damping_collapse:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mMinHeight:I

    int-to-float v2, v2

    aput v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private refreshTitleLayout(F)V
    .locals 7

    .line 245
    :try_start_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 250
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 253
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 254
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingViewTransDistance:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 255
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v2, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->setPullPercent(F)V

    .line 257
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 258
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 259
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 260
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    float-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshingTransDistance:F

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 266
    sget-object p1, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->TAG:Ljava/lang/String;

    const-string v0, "refresh title layout error"

    invoke-static {p1, v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mAnimRefreshFinish:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->cancelAnim(Landroid/animation/Animator;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private updateHeaderLayoutParams(I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mMinHeight:I

    if-ge p1, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 304
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 306
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 2

    .line 176
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOverScrollDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsAbortRefreshing:Z

    .line 178
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    if-eqz v0, :cond_1

    .line 179
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsAbortRefreshing:Z

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    .line 184
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public getLayoutHeader()Landroid/view/View;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method

.method public getTextRefreshing()Landroid/widget/TextView;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    return-object p0
.end method

.method public isRefreshing()Z
    .locals 0

    .line 275
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->releaseResource()V

    return-void
.end method

.method public onFinishHeaderInflate(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    .line 88
    sget v0, Lcom/transsion/widgetslib/R$id;->damping_text_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 91
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 100
    sget v0, Lcom/transsion/widgetslib/R$id;->os_loading_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 101
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingViewHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 102
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 103
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 104
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 105
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/view/OSLoadingView;->setPullPercent(F)V

    .line 109
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mMinHeight:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->updateHeaderLayoutParams(I)V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 1

    .line 70
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOverScrollDistance:F

    .line 72
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 75
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsAbortRefreshing:Z

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mHeightRefreshLayout:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V

    :cond_0
    return-void
.end method

.method public setHeaderLayoutBg(I)V
    .locals 1

    .line 318
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setHeaderLayoutBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHeaderLayoutBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLayoutHeader:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 314
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mMinHeight:I

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mOnRefreshListener:Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getTextRefreshing()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getTextRefreshing()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
