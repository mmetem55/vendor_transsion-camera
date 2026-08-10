.class public Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
.super Landroid/view/ViewGroup;
.source "OSSwipeMenuLayout.java"

# interfaces
.implements Lcom/transsion/widgetslib/view/swipmenu/Controller;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;,
        Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static CURRENT_UI_MODE:I = 0x0

.field public static final DEFAULT_SCROLLER_DURATION:I = 0x15e

.field public static EXECUTEANIMATION:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field public static final OUTLINE_CORNER_SIZE:I = 0x8

.field private static final PAINT_MIN_ALPHA:I = 0xff

.field private static final SPRING_DAMPING_RATIO:F = 1.0f

.field private static final SPRING_STIFFNESS:F = 400.0f

.field private static final TAG:Ljava/lang/String; = "OSSwipeMenuLayout"

.field private static isTouching:Z

.field private static mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;


# instance fields
.field private availableClick:Z

.field private cacheClose:Z

.field private currentPointerId:I

.field private deleteChangeHeightAnimation:Landroid/animation/ValueAnimator;

.field private deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private deltaX:I

.field private hasConsume:Z

.field private isLeftSwipe:Z

.field private isSwipeEnable:Z

.field private isUnMoved:Z

.field private isUserSwiped:Z

.field private mAnimateAlpha:I

.field private mAnimateDelAlpha:I

.field private mAnimateRatio:F

.field private mAutoClipCorner:Z

.field private mBitmapRectFDest:Landroid/graphics/Rect;

.field private mBitmapRectFSrc:Landroid/graphics/Rect;

.field private mCircleDefBgColor:I

.field private mCircleDeleteDefBgColor:I

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentOutlineCorner:I

.field private mDeleteMenuDefBgColor:I

.field private mFirstP:Landroid/graphics/PointF;

.field private mFirstPNormal:Landroid/graphics/PointF;

.field protected mFlingThresholdVelocity:I

.field private mHeight:I

.field public mIsExecuteAnimation:Z

.field private mIsHios:Z

.field private mLastP:Landroid/graphics/PointF;

.field private mLimit:I

.field private mMaxScroll:I

.field private mMenuContentWidth:I

.field private mMenuDelPaint:Landroid/graphics/Paint;

.field private mMenuImageDelPaint:Landroid/graphics/Paint;

.field private mMenuImagePaint:Landroid/graphics/Paint;

.field private mMenuItemIconFixedWidth:I

.field private mMenuItemTextFixedWidth:I

.field private mMenuPaint:Landroid/graphics/Paint;

.field protected mMinFlingVelocity:I

.field private mMinScroll:I

.field private mNormalMenuDefBgColor:I

.field private mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

.field private mPointerId:I

.field private mScaleTouchSlop:I

.field private mScaledMaximumFlingVelocity:I

.field private mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

.field private mScrollerDuration:I

.field private mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

.field private mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

.field private mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

.field private mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

.field private mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field overScrollAmount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    .line 53
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    .line 54
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    const/16 v1, 0x52

    .line 68
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    const/16 v1, 0x40

    .line 69
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    const/16 v1, 0x15e

    .line 75
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    const/16 v1, 0xff

    .line 92
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    .line 93
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    .line 95
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private abortScrollerAnimation()V
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->abortAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteChangeHeightAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteChangeHeightAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    return p1
.end method

.method static synthetic access$702(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    return p1
.end method

.method private acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1320
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1322
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private closeCacheView()V
    .locals 1

    .line 637
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 638
    iget-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 639
    iput-boolean p0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    .line 640
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 641
    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public static closeMenu()V
    .locals 1

    .line 651
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 653
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method private dependOnLimitShowOrHideMenu(I)V
    .locals 2

    .line 629
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v1, :cond_0

    .line 630
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    :goto_0
    return-void
.end method

.method private drawLeftBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_0

    .line 1244
    instance-of v0, p7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_3

    if-nez p7, :cond_2

    .line 1248
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_1

    if-nez p8, :cond_2

    .line 1249
    :cond_1
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    const/4 v2, 0x0

    .line 1251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float v3, p2

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    if-nez p7, :cond_5

    .line 1253
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_4

    if-nez p8, :cond_5

    .line 1254
    :cond_4
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    const/4 v2, 0x0

    add-float/2addr p4, p6

    const/high16 p2, 0x3f800000    # 1.0f

    add-float v3, p4, p2

    .line 1256
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawLeftBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_1

    .line 1262
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_0

    if-nez p8, :cond_1

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_4

    if-nez p7, :cond_3

    .line 1268
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_2

    if-nez p8, :cond_3

    .line 1269
    :cond_2
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    const/4 v2, 0x0

    .line 1271
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float v3, p2

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    if-nez p7, :cond_6

    .line 1273
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_5

    if-nez p8, :cond_6

    .line 1274
    :cond_5
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const/4 v2, 0x0

    add-float v3, p6, p4

    .line 1276
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawLeftBgHios(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    if-nez p7, :cond_1

    .line 1227
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_4

    if-nez p7, :cond_3

    .line 1231
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_2

    if-nez p8, :cond_3

    .line 1232
    :cond_2
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    const/4 v2, 0x0

    .line 1234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float v3, p2

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    if-nez p7, :cond_6

    .line 1236
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_5

    if-nez p8, :cond_6

    .line 1237
    :cond_5
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    const/4 v2, 0x0

    add-float v3, p6, p4

    .line 1239
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawLeftImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1151
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1152
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1153
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p4, v2

    .line 1154
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    if-nez p6, :cond_0

    .line 1155
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v4, :cond_3

    :cond_0
    if-eqz p6, :cond_1

    .line 1157
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_2

    .line 1160
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1162
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1165
    :goto_0
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, v3

    add-float/2addr v1, p4

    div-float p3, v0, v3

    add-float/2addr v2, p3

    .line 1166
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1168
    :cond_3
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p3, p3

    sub-float/2addr p3, v0

    div-float/2addr p3, v3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1174
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1175
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float v7, v7, p4

    div-float/2addr v7, v6

    div-float v8, v4, v6

    sub-float/2addr v7, v8

    add-float v7, p4, v7

    .line 1180
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    div-float v8, v4, v6

    sub-float/2addr v7, v8

    add-float v7, p4, v7

    .line 1183
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    :goto_0
    int-to-float v8, v8

    div-float/2addr v8, v6

    div-float v9, v3, v6

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-nez p6, :cond_1

    .line 1185
    iget-boolean v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_6

    .line 1186
    :cond_1
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    if-eqz p6, :cond_2

    .line 1188
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p6

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1189
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1191
    :cond_2
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1194
    :goto_1
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_3

    .line 1195
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1196
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    if-ne v2, v5, :cond_5

    .line 1199
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_4

    float-to-double v12, v12

    .line 1200
    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float/2addr v14, v9

    float-to-double v14, v14

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v12, v12

    :cond_4
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1202
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1204
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1207
    :cond_6
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1208
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 1209
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    if-ne v2, v5, :cond_7

    .line 1211
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v5, v7

    float-to-int v12, v8

    add-float v13, v7, v4

    float-to-int v13, v13

    add-float v14, v8, v3

    float-to-int v14, v14

    invoke-virtual {v2, v5, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    float-to-double v12, v4

    .line 1212
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v5, v2, v9

    float-to-double v14, v5

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v5, v12

    float-to-double v12, v3

    add-float/2addr v2, v9

    float-to-double v14, v2

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v2, v12

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    .line 1216
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v7, v4

    float-to-int v4, v7

    add-float/2addr v8, v3

    float-to-int v3, v8

    add-float/2addr v7, v5

    float-to-int v5, v7

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1217
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 1219
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method private drawLeftImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .locals 4

    .line 1128
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1129
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p7, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p7, v2

    add-float/2addr p4, p7

    .line 1131
    iget p7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p7, p7

    sub-float/2addr p7, v0

    div-float/2addr p7, v2

    if-nez p6, :cond_0

    .line 1132
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v3, :cond_3

    :cond_0
    if-eqz p6, :cond_1

    .line 1134
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_2

    .line 1137
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1139
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    :goto_0
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v1, v2

    add-float/2addr v1, p4

    div-float p3, v0, v2

    add-float/2addr p7, p3

    .line 1143
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p7, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1145
    :cond_3
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p3, p3

    sub-float/2addr p3, v0

    div-float/2addr p3, v2

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1119
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1120
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1122
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 1123
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 1124
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v1

    div-float/2addr p3, v3

    add-float/2addr p2, p3

    int-to-float p3, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 11

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    move/from16 v9, p5

    add-int/lit8 v10, p3, -0x1

    if-ne v9, v10, :cond_0

    const/4 v3, 0x0

    .line 931
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v4, v1

    iget v1, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    add-float v4, p6, p4

    .line 933
    iget v1, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 935
    :goto_0
    iget-object v1, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    iget-object v1, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    iget-object v1, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 938
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 939
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v1, v3

    .line 940
    iget v3, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    if-ne v9, v10, :cond_1

    .line 942
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    int-to-float v5, v8

    int-to-float v6, v10

    mul-float/2addr v6, p4

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    add-float v2, p6, v5

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 944
    :cond_1
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    add-float v2, p6, v5

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawRightBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_0

    .line 1062
    instance-of v0, p7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_3

    if-nez p7, :cond_2

    .line 1066
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_1

    if-nez p8, :cond_2

    .line 1067
    :cond_1
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    int-to-float v1, p2

    const/4 v2, 0x0

    add-float v3, v1, p4

    .line 1069
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    if-nez p7, :cond_5

    .line 1071
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_4

    if-nez p8, :cond_5

    .line 1072
    :cond_4
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    add-float/2addr p4, p6

    neg-float p2, p4

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float v1, p2, p3

    const/4 v2, 0x0

    neg-float v3, p6

    .line 1074
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawRightBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_1

    .line 1099
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_0

    if-nez p8, :cond_1

    .line 1100
    :cond_0
    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p7

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1102
    :cond_1
    iget-object p8, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_3

    if-nez p7, :cond_2

    .line 1105
    iget-boolean p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-nez p5, :cond_2

    .line 1106
    iget-object p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    int-to-float v1, p2

    const/4 v2, 0x0

    neg-float p2, p4

    int-to-float p3, p3

    mul-float v3, p2, p3

    .line 1108
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    if-nez p7, :cond_4

    .line 1110
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-nez p2, :cond_4

    .line 1111
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    add-float/2addr p4, p6

    neg-float v1, p4

    const/4 v2, 0x0

    neg-float v3, p6

    .line 1113
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawRightBgHios(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V
    .locals 6

    if-eqz p7, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v1, p7

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    if-nez p7, :cond_1

    .line 1082
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_1

    if-eqz p8, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_4

    if-nez p7, :cond_3

    .line 1086
    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p3, :cond_2

    if-nez p8, :cond_3

    .line 1087
    :cond_2
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    int-to-float v1, p2

    const/4 v2, 0x0

    add-float v3, v1, p4

    .line 1089
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    if-nez p7, :cond_6

    .line 1091
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz p2, :cond_5

    if-nez p8, :cond_6

    .line 1092
    :cond_5
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    add-float/2addr p4, p6

    neg-float v1, p4

    const/4 v2, 0x0

    neg-float v3, p6

    .line 1094
    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawRightImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 960
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 961
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 962
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p4, v2

    neg-float p4, p4

    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p4, v2

    .line 963
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    if-nez p6, :cond_0

    .line 964
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v4, :cond_3

    :cond_0
    if-eqz p6, :cond_1

    .line 966
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_2

    .line 969
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 971
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 974
    :goto_0
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    div-float/2addr v1, v3

    add-float/2addr v1, p4

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    int-to-float p2, p2

    .line 975
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 977
    :cond_3
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1009
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1010
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    move/from16 v8, p7

    neg-float v8, v8

    int-to-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 1015
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float v7, p4, v7

    neg-float v7, v7

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 1018
    iget v8, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    :goto_0
    int-to-float v8, v8

    sub-float/2addr v8, v3

    div-float/2addr v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-nez p6, :cond_1

    .line 1020
    iget-boolean v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v12, :cond_6

    .line 1021
    :cond_1
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    if-eqz p6, :cond_2

    .line 1023
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p6

    check-cast v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1024
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1026
    :cond_2
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1027
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    :goto_1
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_3

    .line 1030
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1031
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    if-ne v2, v5, :cond_5

    .line 1034
    iget-boolean v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v13, :cond_4

    float-to-double v12, v12

    .line 1035
    iget v14, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float/2addr v14, v9

    float-to-double v14, v14

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v12, v12

    :cond_4
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1037
    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    div-float/2addr v4, v6

    add-float/2addr v4, v7

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    .line 1039
    iget-object v12, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v12}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1045
    :cond_6
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1046
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1047
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v5, :cond_7

    .line 1049
    iget-object v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    float-to-int v5, v7

    float-to-int v12, v8

    add-int v13, v5, v4

    add-int v14, v12, v3

    invoke-virtual {v2, v5, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    int-to-double v12, v4

    .line 1050
    iget v2, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    add-float v5, v2, v9

    float-to-double v14, v5

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v5, v12

    int-to-double v12, v3

    add-float/2addr v2, v9

    float-to-double v14, v2

    mul-double/2addr v14, v10

    mul-double/2addr v12, v14

    double-to-float v2, v12

    int-to-float v4, v4

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    .line 1054
    iget-object v6, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    add-float/2addr v7, v4

    float-to-int v4, v7

    add-float/2addr v8, v3

    float-to-int v3, v8

    add-float/2addr v7, v5

    float-to-int v5, v7

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v6, v4, v3, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1055
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 1057
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method private drawRightImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V
    .locals 5

    .line 981
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    .line 982
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 984
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_0

    .line 985
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1, p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v1

    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-int v2, p2, p3

    int-to-float v2, v2

    mul-float/2addr v2, p7

    add-float/2addr v1, v2

    sub-float/2addr v1, p7

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    :goto_0
    add-float/2addr v1, v2

    sub-float/2addr p7, v0

    div-float/2addr p7, v3

    add-float/2addr v1, p7

    .line 991
    iget p7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float p7, p7

    sub-float/2addr p7, p4

    div-float/2addr p7, v3

    if-nez p6, :cond_1

    .line 992
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v2, :cond_4

    :cond_1
    if-eqz p6, :cond_2

    .line 994
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    check-cast p6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_3

    .line 997
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 999
    :cond_3
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1002
    :goto_1
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p2

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    div-float/2addr p4, v3

    add-float/2addr p4, p7

    int-to-float p2, p2

    .line 1003
    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1005
    :cond_4
    invoke-virtual {p5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, p7, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 950
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 951
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 952
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 953
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 954
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 955
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    neg-float p2, p2

    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    .line 956
    invoke-virtual {p3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 915
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 916
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 918
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 919
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    add-int/lit8 p3, p3, -0x1

    if-ne p5, p3, :cond_0

    int-to-float p2, p2

    neg-float p4, p4

    int-to-float p3, p3

    mul-float/2addr p4, p3

    sub-float/2addr p4, p2

    sub-float/2addr p4, v1

    div-float/2addr p4, v3

    add-float/2addr p2, p4

    .line 922
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p6, p2

    neg-float p2, p6

    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v1

    div-float/2addr p3, v3

    add-float/2addr p2, p3

    .line 925
    invoke-virtual {p7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getSwipeDuration(Landroid/view/MotionEvent;I)I
    .locals 4

    .line 675
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 677
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v0

    .line 678
    div-int/lit8 v1, v0, 0x2

    .line 679
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 680
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_0

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 683
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 685
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 688
    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getViewCache()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .locals 1

    .line 131
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 142
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    .line 143
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemTextFixedWidth:I

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuItemIconFixedWidth:I

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 147
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFlingThresholdVelocity:I

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 148
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinFlingVelocity:I

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    .line 150
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    .line 151
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    .line 152
    sget-object v2, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    const/16 v1, 0x8

    .line 153
    invoke-static {p1, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    move v1, v3

    :goto_0
    if-ge v1, p3, :cond_5

    .line 157
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 158
    sget v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutSwipeEnable:I

    if-ne v2, v4, :cond_0

    .line 159
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    goto :goto_1

    .line 160
    :cond_0
    sget v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutLeftSwipe:I

    if-ne v2, v4, :cond_1

    .line 161
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    goto :goto_1

    .line 162
    :cond_1
    sget v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutIsHios:I

    if-ne v2, v4, :cond_2

    .line 163
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    goto :goto_1

    .line 164
    :cond_2
    sget v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutAutoClipCorner:I

    if-ne v2, v4, :cond_3

    .line 165
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    goto :goto_1

    .line 166
    :cond_3
    sget v4, Lcom/transsion/widgetslib/R$styleable;->SwipeMenuLayout_SwipeMenuLayoutCornerSize:I

    if-ne v2, v4, :cond_4

    .line 167
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_5
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p3

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    .line 171
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-direct {p2, p3, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 173
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetCurrentSwipeController()V

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 175
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    .line 176
    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    .line 177
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 178
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    .line 179
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    .line 180
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuDelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x10000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    .line 184
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 187
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 188
    sget p2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->CURRENT_UI_MODE:I

    if-eq p2, p1, :cond_6

    .line 189
    sput p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->CURRENT_UI_MODE:I

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->resetCacheIcon(Landroid/content/Context;)V

    .line 193
    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDefBgColor:I

    .line 194
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCircleDeleteDefBgColor:I

    .line 195
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mDeleteMenuDefBgColor:I

    .line 196
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_gray_solid_tertiary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mNormalMenuDefBgColor:I

    .line 197
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFSrc:Landroid/graphics/Rect;

    .line 198
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mBitmapRectFDest:Landroid/graphics/Rect;

    return-void
.end method

.method private invalidateScroller()V
    .locals 2

    .line 771
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 772
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getCurrPos()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    .line 773
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getCurrPos()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    .line 774
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public static release()V
    .locals 1

    .line 1492
    invoke-static {}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->release()V

    .line 1493
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1494
    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    :cond_0
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1328
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1329
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetCurrentSwipeController()V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;-><init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    .line 250
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;-><init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    .line 254
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    :cond_1
    return-void
.end method

.method private resetOverScrollParams()V
    .locals 1

    const/4 v0, 0x0

    .line 670
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    .line 671
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    return-void
.end method

.method private smoothOpenMenu(I)V
    .locals 3

    .line 337
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 338
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoOpenMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V

    .line 343
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method private smoothOpenMenuFling(I)V
    .locals 9

    .line 348
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 349
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v2, :cond_3

    .line 353
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 353
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoOpenMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V

    .line 356
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-le p1, v0, :cond_2

    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->softAbortScrollerAnimation()V

    .line 358
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    return-void
.end method

.method private softAbortScrollerAnimation()V
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->softAbortAnimation()V

    return-void
.end method


# virtual methods
.method protected computeMaxScroll()I
    .locals 1

    .line 1310
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1312
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuContentWidth:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected computeMinScroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->invalidateScroller()V

    :cond_0
    return-void
.end method

.method protected dampedOverScroll(I)V
    .locals 2

    int-to-float p1, p1

    .line 1284
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroll;->dampedScroll(FFI)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1285
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    .line 1286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 1287
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/Utilities;->boundToRange(III)I

    move-result p1

    .line 1288
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->overScrollAmount:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public decorateContentRoundCorner(I)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateContentRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$2;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public decorateOutlineRoundCorner(I)V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorateOutlineRoundCorner size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$1;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 487
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 492
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_4

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 518
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 520
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-boolean v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    invoke-virtual {v0, v3, v4, p1, v5}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I

    move-result v0

    if-ltz v0, :cond_3

    .line 521
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    .line 522
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    if-eqz v3, :cond_4

    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 523
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v5}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getPosition()I

    move-result v5

    invoke-interface {v3, v4, v5, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;->onMenuItemClickListener(Landroid/view/View;II)V

    .line 528
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 529
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    .line 531
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    if-eqz v0, :cond_16

    .line 532
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 533
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 534
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-nez v3, :cond_6

    if-ltz v0, :cond_7

    goto :goto_1

    :cond_6
    if-gtz v0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    .line 535
    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->shouldFlingForVelocity(I)Z

    move-result v3

    .line 536
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeDuration(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 538
    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-lt v5, v6, :cond_9

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v7, :cond_8

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    :cond_9
    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-gt v5, v7, :cond_b

    if-eqz v2, :cond_a

    if-nez v3, :cond_b

    .line 540
    :cond_a
    :goto_2
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 541
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    invoke-virtual {v0, v5, v2, v6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_3

    :cond_b
    if-gez v0, :cond_10

    .line 545
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v2, :cond_d

    if-eqz v3, :cond_c

    .line 547
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenuFling(I)V

    goto/16 :goto_3

    .line 549
    :cond_c
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    goto/16 :goto_3

    :cond_d
    if-eqz v3, :cond_e

    .line 553
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_3

    .line 555
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v2, :cond_f

    .line 556
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_3

    .line 558
    :cond_f
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_3

    :cond_10
    if-lez v0, :cond_15

    .line 563
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v2, :cond_13

    if-eqz v3, :cond_11

    .line 565
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenuFling(I)V

    goto/16 :goto_3

    .line 567
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    if-le v0, v2, :cond_12

    .line 568
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu()V

    goto/16 :goto_3

    .line 570
    :cond_12
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    goto/16 :goto_3

    :cond_13
    if-eqz v3, :cond_14

    .line 575
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenuFling(I)V

    goto/16 :goto_3

    .line 577
    :cond_14
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    goto/16 :goto_3

    .line 581
    :cond_15
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto/16 :goto_3

    .line 585
    :cond_16
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_1a

    .line 586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_18

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_17

    .line 588
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_3

    .line 590
    :cond_17
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    if-nez v0, :cond_1e

    .line 591
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto :goto_3

    .line 594
    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_19

    .line 595
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3

    .line 598
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_3

    .line 601
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_1c

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1b

    .line 603
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_3

    .line 605
    :cond_1b
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    if-nez v0, :cond_1e

    .line 606
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dependOnLimitShowOrHideMenu(I)V

    goto :goto_3

    .line 609
    :cond_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_1d

    .line 610
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->springBack(III)Z

    .line 611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3

    .line 613
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    .line 617
    :cond_1e
    :goto_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->releaseVelocityTracker()V

    .line 618
    sput-boolean v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 619
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    .line 620
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->availableClick:Z

    goto :goto_4

    .line 496
    :cond_1f
    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    if-eqz v0, :cond_20

    return v1

    .line 499
    :cond_20
    sput-boolean v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 501
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUserSwiped:Z

    .line 502
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    .line 503
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    .line 504
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->abortScrollerAnimation()V

    .line 506
    :cond_21
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetOverScrollParams()V

    .line 507
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->closeCacheView()V

    .line 508
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 509
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 510
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstPNormal:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 511
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mPointerId:I

    .line 625
    :goto_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 488
    :cond_22
    :goto_5
    sput-boolean v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isTouching:Z

    .line 489
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->closeCacheView()V

    .line 490
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 695
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1350
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    return-void
.end method

.method public doDeleteAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 1354
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V

    return-void
.end method

.method public doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1360
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 1362
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isMenuOpen(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1364
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1365
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1367
    :cond_1
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1368
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr p1, v1

    neg-int p1, p1

    .line 1369
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    int-to-float v3, p1

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v3, 0x43c80000    # 400.0f

    .line 1370
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1371
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 1369
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1372
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 1373
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;II)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1390
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1391
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1392
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1393
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v8, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;-><init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;IILandroid/view/ViewGroup$MarginLayoutParams;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;)V

    invoke-virtual {p1, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 p1, 0x1

    .line 1469
    sput-boolean p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    .line 1470
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    .line 1471
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    const/4 p1, 0x0

    .line 1472
    sput-object p1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 1473
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_3
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 466
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isCompleteOpen()Z
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

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

.method public isLeftCompleteOpen()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isCompleteClose(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpen()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;->isMenuOpen(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;->isMenuOpenNotEqual(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftSwipe()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    return p0
.end method

.method public isMenuOpen()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpen()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isMenuOpenNotEqual()Z
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isRightMenuOpenNotEqual()Z

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

.method public isRightCompleteOpen()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isCompleteClose(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpen()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;->isMenuOpen(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpenNotEqual()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;->isMenuOpenNotEqual(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwipeEnable()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1500
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetAnimation()V

    .line 1501
    invoke-static {}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->release()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 817
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 818
    iget-object v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_9

    .line 821
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v11

    .line 823
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    if-lez v11, :cond_2

    goto :goto_0

    :cond_1
    if-gez v11, :cond_2

    goto :goto_0

    :cond_2
    move v1, v12

    :goto_0
    if-eqz v1, :cond_b

    .line 824
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-nez v0, :cond_b

    .line 825
    iget-object v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    int-to-float v0, v11

    int-to-float v14, v13

    div-float/2addr v0, v14

    .line 826
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v15, v0

    move v8, v12

    :goto_1
    if-ge v8, v13, :cond_b

    int-to-float v0, v8

    mul-float v1, v15, v0

    .line 828
    iget-boolean v2, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v12

    :goto_2
    int-to-float v2, v2

    add-float v7, v1, v2

    .line 829
    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    .line 830
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 831
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getCircleBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 832
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 833
    iget-boolean v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v1, :cond_7

    .line 834
    iget-boolean v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v1, :cond_5

    if-eqz v18, :cond_5

    .line 835
    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v11

    int-to-float v0, v0

    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1, v8}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getEdgeDistanceHios(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 837
    invoke-virtual {v6}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    .line 839
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 840
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v14

    mul-float/2addr v0, v1

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 843
    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    :goto_3
    move v4, v0

    move v15, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v8

    move-object v5, v6

    move-object/from16 v6, v17

    move v7, v15

    .line 845
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    move/from16 v21, v8

    goto/16 :goto_5

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    move v5, v8

    move-object/from16 v19, v6

    move v6, v7

    move/from16 v20, v7

    move-object/from16 v7, v16

    move/from16 v21, v8

    move/from16 v8, v18

    .line 847
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v21

    move/from16 v4, v20

    move-object/from16 v5, v19

    move-object/from16 v6, v17

    .line 849
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_6
    move-object/from16 v7, v19

    move/from16 v8, v20

    .line 851
    invoke-direct {v9, v10, v8, v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    goto/16 :goto_5

    :cond_7
    move/from16 v21, v8

    move v8, v7

    move-object v7, v6

    .line 856
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_9

    if-eqz v18, :cond_9

    neg-int v0, v11

    .line 858
    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 859
    invoke-virtual {v7}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_4

    .line 861
    :cond_8
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 862
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosSpaceRatio()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v14

    :goto_4
    move v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v21

    move v4, v8

    move-object v5, v7

    move-object/from16 v6, v17

    move v7, v15

    .line 865
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImgHios(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v15

    move/from16 v5, v21

    move v6, v8

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    move/from16 v20, v8

    move/from16 v8, v18

    .line 867
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightBg(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v21

    move/from16 v4, v20

    move-object/from16 v5, v19

    move-object/from16 v6, v17

    .line 869
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImg(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, v19

    move/from16 v1, v20

    .line 871
    invoke-direct {v9, v10, v1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightText(Landroid/graphics/Canvas;FLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    :goto_5
    add-int/lit8 v8, v21, 0x1

    goto/16 :goto_1

    .line 880
    :cond_b
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v0, :cond_14

    .line 881
    iget-object v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    .line 882
    iget-object v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v14, v0, v1

    move v15, v12

    :goto_6
    if-ge v15, v13, :cond_14

    int-to-float v0, v15

    mul-float/2addr v0, v14

    .line 884
    iget-boolean v1, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    goto :goto_7

    :cond_c
    move v1, v12

    :goto_7
    int-to-float v1, v1

    add-float v16, v0, v1

    .line 885
    iget-object v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    .line 886
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 887
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 888
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getCircleBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 889
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_10

    .line 890
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_d

    if-nez v18, :cond_e

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v8, v18

    .line 891
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    :cond_e
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    .line 894
    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 896
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawLeftTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    goto :goto_8

    .line 899
    :cond_10
    iget-boolean v0, v9, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_11

    if-nez v18, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v8, v18

    .line 900
    invoke-direct/range {v0 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightBgAni(Landroid/graphics/Canvas;IIFIFLandroid/graphics/drawable/Drawable;Z)V

    :cond_12
    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v19

    move v7, v14

    .line 903
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightImgAni(Landroid/graphics/Canvas;IIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;Landroid/graphics/drawable/Drawable;F)V

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 905
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->drawRightTextAni(Landroid/graphics/Canvas;IIFIFLcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 910
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    :goto_9
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 206
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsHios:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAutoClipCorner:Z

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateOutlineRoundCorner(I)V

    .line 208
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mCurrentOutlineCorner:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->decorateContentRoundCorner(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 700
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 718
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 721
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 722
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 703
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_3

    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    return v1

    .line 710
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_3

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    return v1

    .line 730
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    const/4 p3, 0x0

    add-int/2addr p2, p3

    :goto_0
    if-ge p3, p1, :cond_1

    .line 474
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 475
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    if-nez p3, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p4, p2, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 478
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p2, p4

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->updateMinAndMaxScrollX()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 438
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    const/4 v1, 0x0

    .line 440
    iput v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 442
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 444
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 445
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 446
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 447
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 448
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 449
    iput-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 450
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 453
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz p1, :cond_1

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 454
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v1

    iget p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mHeight:I

    .line 458
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 457
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 735
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->EXECUTEANIMATION:Z

    if-nez v0, :cond_5

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->currentPointerId:I

    if-eq v0, v1, :cond_1

    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->currentPointerId:I

    .line 741
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 743
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->hasConsume:Z

    .line 744
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 745
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_3

    .line 746
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 748
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 749
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isUnMoved:Z

    :cond_4
    float-to-int v0, v0

    .line 751
    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollBy(II)V

    .line 752
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return v2

    .line 759
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 2

    .line 1335
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1338
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public resetAnimation()V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteChangeHeightAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deleteChangeHeightAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public reuseItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1481
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 1482
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1483
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    .line 1484
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImageDelPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1485
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1486
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateDelAlpha:I

    .line 1487
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1488
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 779
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    .line 780
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .line 785
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 788
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mIsExecuteAnimation:Z

    if-eqz v0, :cond_1

    .line 789
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void

    .line 792
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->cacheClose:Z

    if-eqz v0, :cond_2

    .line 793
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void

    .line 796
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    add-int/2addr v0, v1

    .line 797
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 798
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-le v0, v4, :cond_4

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-ge v0, v4, :cond_4

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 800
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-ge v0, v1, :cond_6

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-le v0, v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    .line 801
    :goto_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isSpringing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 802
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_9

    .line 804
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_3

    :cond_8
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    :goto_3
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dampedOverScroll(I)V

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_b

    .line 806
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-nez p1, :cond_a

    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_4

    :cond_a
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    :goto_4
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->dampedOverScroll(I)V

    goto :goto_5

    .line 808
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 810
    :goto_5
    iput v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->deltaX:I

    return-void
.end method

.method public setMenuCreator(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;)V
    .locals 1

    .line 426
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

    .line 427
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 428
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenuCreator:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-interface {p1, v0, v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuCreator;->onCreateMenu(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    .line 429
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuContentWidth:I

    .line 430
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mLimit:I

    :cond_0
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mOnMenuItemClickListener:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    return-void
.end method

.method public setRtl(Z)Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    .line 126
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->resetCurrentSwipeController()V

    return-object p0
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isSwipeEnable:Z

    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 0

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mFlingThresholdVelocity:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public smoothCloseLeftMenu()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_0

    .line 373
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 374
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .line 366
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method public smoothCloseMenu(I)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoCloseMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V

    .line 393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    const/4 p0, 0x0

    .line 395
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public smoothCloseMenuFling(I)V
    .locals 9

    .line 400
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    if-eqz v2, :cond_3

    .line 404
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    neg-int v5, p1

    iget v6, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    iget v7, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    .line 406
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 404
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->autoCloseMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V

    .line 408
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->getFinalPos()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    if-ge p1, v0, :cond_2

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    .line 411
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    const/4 p0, 0x0

    .line 413
    sput-object p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mViewCache:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    return-void
.end method

.method public smoothCloseRightMenu()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 382
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .locals 1

    .line 312
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenLeftMenu(I)V

    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;

    if-eqz v0, :cond_0

    .line 323
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 324
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_0
    return-void
.end method

.method public smoothOpenMenu()V
    .locals 1

    .line 307
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu()V
    .locals 1

    .line 317
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenRightMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeRightHorizontal:Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;

    if-eqz v0, :cond_0

    .line 331
    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    .line 332
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_0
    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 1

    .line 1293
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMaxScroll()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMinScroll:I

    .line 1298
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_1

    .line 1299
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMaxScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    goto :goto_1

    .line 1301
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->computeMinScroll()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMaxScroll:I

    :goto_1
    return-void
.end method
