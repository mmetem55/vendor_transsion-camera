.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$DividerType;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$CurvedArcDirection;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$TextAlign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final CURVED_ARC_DIRECTION_CENTER:I = 0x1

.field public static final CURVED_ARC_DIRECTION_LEFT:I = 0x0

.field public static final CURVED_ARC_DIRECTION_RIGHT:I = 0x2

.field private static final DEFAULT_CLICK_CONFIRM:J = 0x78L

.field public static final DEFAULT_CURVED_FACTOR:F = 0.75f

.field private static final DEFAULT_DIVIDER_HEIGHT:F

.field private static final DEFAULT_INTEGER_FORMAT:Ljava/lang/String; = "%2d"

.field private static final DEFAULT_LINE_SPACING:F

.field private static final DEFAULT_REFRACT_RATIO:F = 1.0f

.field private static final DEFAULT_SCROLL_DURATION:I = 0xfa

.field private static final DEFAULT_TEXT_BOUNDARY_MARGIN:F = 0.0f

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_VISIBLE_ITEM:I = 0x5

.field public static final DIVIDER_TYPE_FILL:I = 0x0

.field public static final DIVIDER_TYPE_WRAP:I = 0x1

.field private static final MODIFY_SCROLL_DURATION:I = 0x15e

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WheelView"

.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2


# instance fields
.field private isAutoFitTextSize:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isDrawSelectedRect:Z

.field private isResetSelectedPosition:Z

.field private isShowDivider:Z

.field private isSoundEffect:Z

.field private mAmPmMaxDownPull:F

.field private mAmPmMaxUpPull:F

.field private mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

.field mBaseWidth:F

.field private mBgColor:I

.field private mBoldTypeface:Landroid/graphics/Typeface;

.field private mCalendar:Ljava/util/Calendar;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterToBaselineY:I

.field private mCenterX:I

.field private mCenterY:I

.field private mClipBottom:I

.field private mClipLeft:I

.field private mClipRight:I

.field private mClipTop:I

.field private mCurrentScrollPosition:I

.field private mCurvedArcDirection:I

.field private mCurvedArcDirectionFactor:F

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDividerCap:Landroid/graphics/Paint$Cap;

.field private mDividerColor:I

.field private mDividerOffset:F

.field private mDividerPaddingForWrap:F

.field private mDividerSize:F

.field private mDividerType:I

.field private mDownStartTime:J

.field private mDownTouchScrollOffsetY:F

.field private mDownTouchY:F

.field private mDrawRect:Landroid/graphics/Rect;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mHourWheel:Z

.field private mIs24Format:Z

.field private mIsAmPmWheel:Z

.field private mIsBoldForSelectedItem:Z

.field private mIsRtl:Z

.field private mItemNormalHeight:I

.field private mItemSelectHeight:I

.field private mLineSpacing:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxFlingVelocity:I

.field private mMaxScrollY:I

.field private mMinFlingVelocity:I

.field mMinScrollGap:F

.field private mMinScrollY:I

.field private mMinuteWheel:Z

.field private mMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedFling:Z

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefractRatio:F

.field private mScrollOffsetY:F

.field private mScrolledY:F

.field private mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

.field protected mScrollerRun:Ljava/lang/Runnable;

.field private mSecondPaint:Landroid/graphics/Paint;

.field private mSelectedItemBottomLimit:I

.field private mSelectedItemPosition:I

.field private mSelectedItemTopLimit:I

.field mSelectedMatrix:Landroid/graphics/Matrix;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSelectedRectColor:I

.field private mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

.field private mStartX:I

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTextAlign:I

.field private mTextBoundaryMargin:F

.field private mTextFirstColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSecondColor:I

.field private mTextSelectColor:I

.field private mTextSizeFirst:I

.field private mTextSizeSecond:I

.field private mTextSizeSelect:I

.field private mTextThirdColor:I

.field private mTotalHeight:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleItems:I

.field private mWheelHeight:I

.field private mWheelWidth:I

.field private mYearDays:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 60
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 61
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->sp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_TEXT_SIZE:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    .line 95
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    .line 96
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 123
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 166
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p3, 0x0

    .line 169
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    const/4 v1, 0x0

    .line 184
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    .line 201
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsBoldForSelectedItem:Z

    const/4 v1, 0x0

    .line 203
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 205
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 214
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    .line 224
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    .line 231
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedMatrix:Landroid/graphics/Matrix;

    .line 233
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x44340000    # 720.0f

    .line 236
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBaseWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    .line 237
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollGap:F

    .line 839
    new-instance p3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)F
    .locals 0

    .line 56
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxDownPull:F

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .locals 0

    .line 56
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void
.end method

.method private adjustVisibleItems(I)I
    .locals 0

    .line 1442
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private animResetAmpmLocation(FF)V
    .locals 6

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    return-void

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [F

    .line 2270
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    .line 2271
    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2272
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2273
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2286
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateDistanceToEndPoint(F)F
    .locals 3

    .line 1051
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1052
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    neg-int p0, v1

    int-to-float p0, p0

    :goto_0
    sub-float/2addr p0, p1

    return p0

    :cond_0
    int-to-float p0, v1

    goto :goto_0

    :cond_1
    neg-float p0, p1

    return p0
.end method

.method private calculateDrawStart()V
    .locals 3

    .line 547
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    .line 561
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterToBaselineY:I

    return-void
.end method

.method private calculateItemDistance(I)I
    .locals 1

    .line 1549
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private calculateLimitY()V
    .locals 2

    .line 568
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    return-void
.end method

.method private calculateTextSize()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 470
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2209
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2212
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2213
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 2214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    .line 2216
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2217
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 2218
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2220
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 2221
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2222
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const/4 v3, 0x0

    const-string v4, "%d"

    const-string v5, " "

    if-eqz v1, :cond_2

    .line 2223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v6, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2226
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private dividedItemHeight()I
    .locals 0

    .line 1092
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private doScroll(F)V
    .locals 2

    .line 966
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 967
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez p1, :cond_1

    .line 969
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    int-to-float p1, p1

    .line 970
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    goto :goto_0

    .line 971
    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float p1, p1

    .line 972
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected static dp2px(F)F
    .locals 2

    .line 2001
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V
    .locals 7

    .line 635
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 641
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p5, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p5, v2

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    .line 647
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, v3, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float v3, p0, v1

    :cond_1
    cmpl-float p0, v3, v4

    if-lez p0, :cond_2

    mul-float v4, v3, v2

    :cond_2
    add-float/2addr p4, p5

    add-float/2addr p4, v0

    .line 653
    invoke-virtual {p1, p3, v4, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentPosition()I
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1072
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 1073
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    goto :goto_0

    .line 1075
    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1077
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 1079
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private getDataByIndex(I)Ljava/lang/String;
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 735
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v2, :cond_2

    .line 736
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 747
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    if-eqz p1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 748
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    .line 266
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const/4 v1, 0x1

    .line 267
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    const/4 v2, 0x0

    .line 268
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    .line 269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 274
    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_primary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    .line 276
    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextFirstColor:I

    .line 277
    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    .line 278
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextThirdColor:I

    .line 279
    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    new-array v4, v1, [I

    .line 282
    sget v5, Lcom/transsion/widgetslib/R$attr;->wheelWidth:I

    aput v5, v4, v0

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 283
    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    .line 284
    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    .line 285
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeFirst:I

    .line 290
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    .line 291
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    .line 292
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mItemNormalHeight:I

    .line 293
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mItemSelectHeight:I

    .line 295
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v3, v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 296
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v3, v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    const/4 p2, 0x5

    .line 306
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 308
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 309
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 311
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 312
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    .line 314
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    .line 315
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    .line 316
    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    .line 317
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    .line 318
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    .line 320
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerOffset:F

    .line 321
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    .line 322
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    .line 324
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    .line 325
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    const/high16 p2, 0x3f400000    # 0.75f

    .line 326
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 330
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 331
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    cmpl-float v0, p2, p2

    if-lez v0, :cond_0

    .line 333
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    goto :goto_0

    :cond_0
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 335
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 337
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p2, p1

    .line 338
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBaseWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 339
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollGap:F

    return-void
.end method

.method private initDefaultVolume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 455
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 457
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 459
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :goto_0
    return-void
.end method

.method private initValue(Landroid/content/Context;)V
    .locals 2

    .line 389
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    .line 391
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    .line 393
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 394
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-direct {v1, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    .line 396
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    .line 397
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDensity:F

    .line 399
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 400
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateTextAlign()V

    .line 403
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 946
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private invalidateIfYChanged()V
    .locals 2

    .line 981
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 982
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    .line 984
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_0

    float-to-int v0, v0

    .line 985
    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScroll(I)V

    .line 987
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScroll(F)V

    .line 989
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->observeItemChanged()V

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private isAnimResetAmpmRunning()Z
    .locals 0

    .line 2290
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private observeItemChanged()V
    .locals 5

    .line 999
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1000
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1003
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1004
    invoke-interface {v2, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelItemChanged(II)V

    .line 1006
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelItemChanged(II)V

    .line 1008
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->playSoundEffect()V

    .line 1010
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1012
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    :cond_1
    return-void
.end method

.method private recalculateCenterToBaselineY()I
    .locals 2

    .line 717
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 719
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private recalculateStartX(F)V
    .locals 2

    .line 697
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_0

    :cond_1
    float-to-int p1, p1

    .line 699
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    :goto_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 956
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private remeasureTextSize(Ljava/lang/String;)I
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 665
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v5, v1, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    div-float v2, v1, v4

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    :goto_0
    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    .line 674
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterToBaselineY:I

    return p0

    .line 676
    :cond_1
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v5, v5

    :goto_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    cmpg-float v0, v5, v4

    if-gtz v0, :cond_2

    goto :goto_2

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 683
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    div-float/2addr v2, v3

    .line 686
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recalculateStartX(F)V

    .line 688
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result p0

    return p0
.end method

.method private resizeTextSize(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 3

    .line 2238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2239
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2243
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2244
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-le v1, v0, :cond_1

    .line 2246
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDensity:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2247
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->resizeTextSize(Landroid/graphics/Paint;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected static sp2px(F)F
    .locals 2

    .line 2011
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private updateTextAlign()V
    .locals 2

    .line 477
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 486
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortFinishScroll()V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method public forceFinishScroll()V
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method protected forceStopScroller()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public getCurvedArcDirection()I
    .locals 0

    .line 1815
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    return p0
.end method

.method public getCurvedArcDirectionFactor()F
    .locals 0

    .line 1840
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    return p0
.end method

.method public getCurvedRefractRatio()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1892
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1182
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method protected getDataText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 762
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 763
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 765
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mHourWheel:Z

    const-string v2, "%02d"

    const-string v3, "%d"

    if-eqz v1, :cond_1

    .line 766
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIs24Format:Z

    if-eqz p0, :cond_2

    goto :goto_0

    .line 767
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinuteWheel:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 772
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 773
    :cond_3
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 774
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 776
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDividerCap()Landroid/graphics/Paint$Cap;
    .locals 0

    .line 1716
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public getDividerColor()I
    .locals 0

    .line 1590
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    return p0
.end method

.method public getDividerHeight()F
    .locals 0

    .line 1621
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    return p0
.end method

.method public getDividerPaddingForWrap()F
    .locals 0

    .line 1680
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    return p0
.end method

.method public getDividerType()I
    .locals 0

    .line 1656
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    return p0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1157
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1160
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-gez p1, :cond_2

    .line 1162
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineSpacing()F
    .locals 0

    .line 1381
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    return p0
.end method

.method public getOnItemSelectedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation

    .line 1906
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    return-object p0
.end method

.method public getOnWheelChangedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;
    .locals 0

    .line 1924
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    return-object p0
.end method

.method public getPlayVolume()F
    .locals 0

    .line 1135
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->getPlayVolume()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getRefractRatio()F
    .locals 0

    .line 1868
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    return p0
.end method

.method public getSecondPaint()Landroid/graphics/Paint;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedItemData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1173
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemPosition()I
    .locals 0

    .line 1478
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    return p0
.end method

.method public getSelectedPaint()Landroid/graphics/Paint;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedRectColor()I
    .locals 0

    .line 1760
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    return p0
.end method

.method public getTextAlign()I
    .locals 0

    .line 1320
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    return p0
.end method

.method public getTextBoundaryMargin()F
    .locals 0

    .line 1347
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    return p0
.end method

.method public getTextSecondColor()I
    .locals 0

    .line 376
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    return p0
.end method

.method public getTextSelectColor()I
    .locals 0

    .line 367
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    return p0
.end method

.method public getTextSizeSecond()I
    .locals 0

    .line 348
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    return p0
.end method

.method public getTextSizeSelect()I
    .locals 0

    .line 356
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1263
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleItems()I
    .locals 0

    .line 1417
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    return p0
.end method

.method public getWheelHeight()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    return p0
.end method

.method public isAutoFitTextSize()Z
    .locals 0

    .line 1244
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    return p0
.end method

.method public isCurved()Z
    .locals 0

    .line 1788
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    return p0
.end method

.method public isCyclic()Z
    .locals 0

    .line 1451
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    return p0
.end method

.method public isDrawSelectedRect()Z
    .locals 0

    .line 1741
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    return p0
.end method

.method public isPositionInRange(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 1559
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResetSelectedPosition()Z
    .locals 0

    .line 1226
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    return p0
.end method

.method public isShowDivider()Z
    .locals 0

    .line 1568
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    return p0
.end method

.method public isSoundEffect()Z
    .locals 0

    .line 1101
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    return p0
.end method

.method public isYearDays()Z
    .locals 0

    .line 2180
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    return p0
.end method

.method modifyScrollerPosition(ZF)F
    .locals 9

    .line 822
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDistanceToEndPoint(F)F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    .line 824
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v1, p2

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_1

    .line 826
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 832
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v4, 0x0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v5, p0

    const/4 v6, 0x0

    float-to-int v7, p2

    const/16 v8, 0x15e

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    :cond_4
    return p2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 424
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 425
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->release()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 575
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 576
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v0

    .line 580
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    int-to-float v8, v0

    div-float/2addr v1, v8

    float-to-int v1, v1

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v9, v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    int-to-float v10, v2

    mul-float v11, v8, v3

    sub-float v2, v9, v11

    .line 590
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float v12, v2, v3

    :goto_0
    int-to-float v2, v1

    cmpg-float v2, v2, v10

    if-gez v2, :cond_2

    mul-int v2, v1, v0

    int-to-float v2, v2

    add-float v6, v12, v2

    sub-float v2, v9, v6

    sub-float/2addr v2, v11

    .line 596
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v11

    if-gez v3, :cond_1

    div-float/2addr v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 600
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v7, v5

    div-float/2addr v4, v7

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 601
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 602
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->textColorScale(F)I

    move-result v2

    .line 603
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V

    goto :goto_1

    .line 607
    :cond_1
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onItemSelected(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 504
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v0, :cond_0

    .line 505
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 507
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 510
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_1

    const-wide v2, 0x3fb0c152382d7365L    # 0.06544984694978735

    .line 511
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x0

    .line 514
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 515
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 514
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 522
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 523
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterX:I

    .line 524
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    .line 525
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    int-to-float p3, p3

    iget p4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerOffset:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemTopLimit:I

    .line 526
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemBottomLimit:I

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipLeft:I

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipTop:I

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipRight:I

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipBottom:I

    .line 532
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 534
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 537
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateItemDistance(I)I

    move-result p1

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 539
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->doScroll(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 850
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAnimResetAmpmRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 855
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initVelocityTracker()V

    .line 859
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    goto/16 :goto_2

    .line 878
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 879
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    sub-float/2addr v0, p1

    .line 880
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_3

    .line 881
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    .line 883
    :cond_3
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 886
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v0, :cond_5

    .line 887
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 888
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 891
    :cond_4
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxDownPull:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 892
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 897
    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz p1, :cond_6

    .line 898
    invoke-interface {p1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 900
    :cond_6
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 901
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    goto/16 :goto_2

    .line 907
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 908
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 909
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    if-eqz v3, :cond_8

    goto :goto_0

    .line 925
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x78

    cmp-long v0, v3, v5

    if-gtz v0, :cond_9

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int v1, p1

    :cond_9
    int-to-float p1, v1

    .line 930
    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    goto :goto_1

    .line 911
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 913
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v4, 0x0

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v5, p1

    const/4 v6, 0x0

    neg-float p1, v0

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    iget v11, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->fling(IIIIIIII)V

    .line 917
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFinalY()I

    move-result p1

    int-to-float p1, p1

    .line 918
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 919
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 p1, 0x0

    .line 920
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    move-result p1

    .line 921
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 922
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->setFixedFlingValue(F)V

    .line 932
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->runScroller()V

    .line 933
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    .line 934
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recycleVelocityTracker()V

    goto :goto_2

    .line 865
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 868
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    .line 870
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    .line 873
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->measureTextHeight(Landroid/graphics/Paint;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    .line 874
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    :goto_2
    return v2

    .line 856
    :cond_d
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 432
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isBoldTextAdjustment(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 437
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 440
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onWheelItemChanged(II)V
    .locals 0

    return-void
.end method

.method protected onWheelScroll(F)V
    .locals 0

    return-void
.end method

.method protected onWheelScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected onWheelSelected(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 2254
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 2256
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 2257
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :cond_0
    return-void
.end method

.method public playSoundEffect()V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-eqz p0, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->playSoundEffect()V

    :cond_0
    return-void
.end method

.method protected runScroller()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public set24HoursFormat(Z)V
    .locals 0

    .line 2201
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIs24Format:Z

    return-void
.end method

.method public setAmPmWheel(Z)V
    .locals 0

    .line 2197
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    return-void
.end method

.method public setAutoFitTextSize(Z)V
    .locals 0

    .line 1253
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    .line 1254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    .line 1797
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1800
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    .line 1801
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1802
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1803
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirection(I)V
    .locals 1

    .line 1827
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1830
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    .line 1831
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .locals 3

    .line 1850
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    move p1, v2

    .line 1858
    :cond_2
    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    .line 1859
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedRefractRatio(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1897
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setRefractRatio(F)V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 1460
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1463
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    .line 1465
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    .line 1466
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1468
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1469
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1194
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    .line 1195
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1197
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 1198
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1200
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1204
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1212
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1213
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1215
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1216
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1217
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    if-ne v0, p1, :cond_0

    return-void

    .line 1731
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 1732
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1608
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1611
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    .line 1612
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColorRes(I)V
    .locals 1

    .line 1599
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerColor(I)V

    return-void
.end method

.method public setDividerHeight(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1630
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerHeight(FZ)V

    return-void
.end method

.method public setDividerHeight(FZ)V
    .locals 1

    .line 1640
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    if-eqz p2, :cond_0

    .line 1641
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1645
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerPaddingForWrap(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1689
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerPaddingForWrap(FZ)V

    return-void
.end method

.method public setDividerPaddingForWrap(FZ)V
    .locals 1

    .line 1699
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    if-eqz p2, :cond_0

    .line 1700
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1704
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerType(I)V
    .locals 1

    .line 1667
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1670
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    .line 1671
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawSelectedRect(Z)V
    .locals 0

    .line 1750
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    .line 1751
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHourWheel(Z)V
    .locals 0

    .line 2189
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mHourWheel:Z

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1390
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setLineSpacing(FZ)V

    return-void
.end method

.method public setLineSpacing(FZ)V
    .locals 1

    .line 1400
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    if-eqz p2, :cond_0

    .line 1401
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1405
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1406
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1407
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1408
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinuteWheel(Z)V
    .locals 0

    .line 2193
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinuteWheel:Z

    return-void
.end method

.method public setMonthList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2205
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1915
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    return-void
.end method

.method public setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V
    .locals 0

    .line 1933
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    return-void
.end method

.method public setPlayVolume(F)V
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz p0, :cond_0

    .line 1145
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :cond_0
    return-void
.end method

.method public setRefractRatio(F)V
    .locals 3

    .line 1877
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 1878
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 1880
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    .line 1882
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 1884
    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_2

    return-void

    .line 1887
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .locals 0

    .line 1235
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZ)V

    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZI)V

    return-void
.end method

.method public setSelectedItemPosition(IZI)V
    .locals 7

    .line 1512
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1517
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateItemDistance(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1522
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    if-eqz p2, :cond_3

    .line 1526
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v2, 0x0

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v3, p1

    const/4 v4, 0x0

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0xfa

    :goto_0
    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    .line 1528
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    goto :goto_1

    :cond_3
    int-to-float p2, v5

    .line 1532
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->doScroll(F)V

    .line 1533
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1535
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    if-eqz p2, :cond_4

    .line 1536
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p2, p0, p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/lang/Object;I)V

    .line 1538
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onItemSelected(Ljava/lang/Object;I)V

    .line 1539
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz p1, :cond_5

    .line 1540
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelSelected(I)V

    .line 1542
    :cond_5
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelSelected(I)V

    .line 1543
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    :goto_1
    return-void
.end method

.method public setSelectedRectColor(I)V
    .locals 0

    .line 1778
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    .line 1779
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedRectColorRes(I)V
    .locals 1

    .line 1769
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedRectColor(I)V

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    .line 1577
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1580
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    .line 1581
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1110
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-nez v0, :cond_0

    .line 1111
    invoke-static {}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->obtain()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    .line 1112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initDefaultVolume(Landroid/content/Context;)V

    .line 1114
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    return-void
.end method

.method public setSoundEffectResource(I)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->load(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextAlign(I)V
    .locals 1

    .line 1332
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1335
    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    .line 1336
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateTextAlign()V

    .line 1337
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 1338
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBoundaryMargin(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1356
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextBoundaryMargin(FZ)V

    return-void
.end method

.method public setTextBoundaryMargin(FZ)V
    .locals 1

    .line 1366
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    if-eqz p2, :cond_0

    .line 1367
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 1371
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1372
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSecondColor(I)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 371
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSecond(I)V
    .locals 1

    .line 343
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    .line 344
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSelect(I)V
    .locals 1

    .line 351
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    .line 1287
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsBoldForSelectedItem:Z

    if-eqz p2, :cond_2

    .line 1290
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1291
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 1292
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1294
    :cond_1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    .line 1295
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 1298
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 1300
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1302
    :goto_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1303
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 1305
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1306
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1307
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1308
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 1

    .line 1426
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1429
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    const/4 p1, 0x0

    .line 1430
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1431
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1432
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .locals 0

    .line 2234
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    return-void
.end method

.method public setWheelHeight(I)V
    .locals 0

    .line 496
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setYearDays(Ljava/util/Calendar;Z)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    .line 2185
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    return-void
.end method

.method textColorScale(F)I
    .locals 8

    .line 612
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    const/high16 v1, -0x1000000

    and-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xff0000

    and-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int v6, v0, v5

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    and-int/2addr v3, p0

    ushr-int/lit8 v3, v3, 0x10

    and-int/2addr v5, p0

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-float v7, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v2, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    float-to-int p0, v4

    shl-int/lit8 p1, v1, 0x18

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method protected updateScroller()V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 799
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 800
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v1

    .line 802
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFixedFlingValue()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 808
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    .line 810
    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->animResetAmpmLocation(FF)V

    goto :goto_0

    .line 812
    :cond_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    goto :goto_0

    .line 815
    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    :goto_0
    return-void
.end method
