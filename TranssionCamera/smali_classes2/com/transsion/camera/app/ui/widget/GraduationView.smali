.class public Lcom/transsion/camera/app/ui/widget/GraduationView;
.super Landroid/view/View;
.source "GraduationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;,
        Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;


# instance fields
.field private mAnimatedValue:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCoordinateCorrected:Z

.field private mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

.field private mCursorDirectionCoordinate:I

.field private mCursorDownCoordinate:I

.field private final mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

.field private mCursorMoveCount:I

.field private mCursorTitleDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorTitleTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownNotFromView:Z

.field private mFakeMotionEvent:Z

.field private final mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

.field private mGraduations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentCursorIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorRotateDegree:I

.field private mInitialTouchX:I

.field private mInteractiveListener:Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mLastTouchX:I

.field private mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

.field private mMaxGraduationsCoordinate:I

.field private mMinGraduationsCoordinate:I

.field private mMoving:Z

.field private mNeedAnimate:Z

.field private mPauseIndependentIndex:I

.field private mProgress:I

.field private mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation
.end field

.field private mRangesCursor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;",
            ">;"
        }
    .end annotation
.end field

.field private mReversed:Z

.field private mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

.field private final mTouchSlop:I

.field private mTouching:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$xI10lHYUT5qsDldAwSnr9dawO9I(Lcom/transsion/camera/app/ui/widget/GraduationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->lambda$animate$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    .line 69
    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->NONE:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_400:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_800:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PORTRAIT_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->SUPER_MOON:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    .line 117
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    .line 129
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    .line 590
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    .line 166
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    .line 167
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 169
    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GraduationView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 172
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GraduationView_graduationStyle:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 174
    sget-object p4, Lcom/transsion/camera/app/ui/widget/GraduationView;->sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    aget-object p3, p4, p3

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 176
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    const-string p2, "vibrator"

    .line 183
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    .line 185
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/widget/GraduationView;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/widget/GraduationView;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return p1
.end method

.method private animate(Z)V
    .locals 3

    .line 689
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 700
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 701
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 702
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GraduationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/GraduationView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GraduationView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView$1;-><init>(Lcom/transsion/camera/app/ui/widget/GraduationView;F)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateCursorScale()F
    .locals 1

    .line 587
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0
.end method

.method private cancelAnimate()V
    .locals 1

    .line 682
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 684
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private coordinateCursorPause(I)V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 738
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    if-gt v1, v0, :cond_1

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    goto :goto_1

    .line 740
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    if-ge v2, v0, :cond_2

    .line 741
    iput v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 743
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    :goto_1
    return-void
.end method

.method private coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 772
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    if-nez v0, :cond_1

    return-object p0

    .line 779
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 781
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    return-object p0
.end method

.method private correctCoordinate(II)V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentWidth()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentHeight()I

    move-result v1

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr p1, v2

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    .line 344
    sget-object v2, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctCoordinate widthAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", heightAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contentWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contentHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lt p1, v0, :cond_0

    .line 349
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 350
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getExceptedHeight()I

    move-result v3

    if-ge p2, v3, :cond_1

    :cond_0
    const-string v3, "size is too small!!!"

    .line 351
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int v0, p2, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 359
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctGraduationsCoordinate(II)V

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateGraduationsCoordinateRange()V

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 363
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursorCoordinate(I)V

    .line 366
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorToProgress(IZ)V

    return-void
.end method

.method private correctCursor(I)V
    .locals 3

    .line 815
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_1

    .line 822
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 824
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 828
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 829
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 844
    :pswitch_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 847
    :goto_0
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private correctCursorCoordinate(I)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 395
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 396
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 397
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 398
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 400
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setCoordinateRange(II)V

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinate(II)V

    return-void
.end method

.method private correctGraduationsCoordinate(II)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 372
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->offset(II)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    if-nez p0, :cond_1

    return-void

    .line 378
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 379
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->offset(II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private createCursorAndGraduations()V
    .locals 6

    .line 312
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createCursorAndGraduations start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 315
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->createCursor(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 316
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    if-lez v3, :cond_0

    .line 317
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorMoveCount(I)V

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 320
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    .line 321
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseIndependentIndex(I)V

    .line 322
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    .line 323
    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->createGraduations(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 324
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getRanges()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 325
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getCursorRanges()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCursorAndGraduations end | elapseTime: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->calculateCursorScale()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method private drawGraduations(Landroid/graphics/Canvas;)V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 551
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->graduationOffset(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 550
    invoke-virtual {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->draw(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private graduationOffset(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)F
    .locals 4

    .line 556
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isGraduationAnimNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 564
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getAnimTranslateMax()I

    move-result v0

    .line 565
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 566
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getAnimDistanceThreshold()I

    move-result v2

    .line 568
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, v2, :cond_2

    return v1

    :cond_2
    sub-int p1, v2, p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 574
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private initCursorAndGraduations()V
    .locals 2

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    .line 301
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->createCursorAndGraduations()V

    .line 302
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicatorInternal(I)V

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCoordinate(II)V

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    :cond_1
    return-void
.end method

.method private invalidDownEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 672
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMinGraduationsCoordinate:I

    add-int/lit8 v0, v0, -0x19

    if-lt p1, v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxGraduationsCoordinate:I

    add-int/lit8 p0, p0, 0x19

    if-le p1, p0, :cond_0

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

.method private isAnimating()Z
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 678
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

.method private isGraduationAnimNeeded()Z
    .locals 1

    .line 579
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSizeAvailable()Z
    .locals 1

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animate$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 704
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 504
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 505
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 513
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getExceptedHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    .line 514
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->getExceptedHeight()F

    move-result v2

    .line 512
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr p0, v1

    float-to-int p0, p0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 519
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 483
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 484
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 486
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 493
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentWidth()I

    move-result p0

    add-int/2addr v1, p0

    const/high16 p0, -0x80000000

    if-ne v0, p0, :cond_1

    .line 496
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private notifyProgressChanged(IZ)V
    .locals 3

    .line 851
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 854
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProgressChanged progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 860
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;->onProgressChanged(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onClick(I)V
    .locals 0

    .line 810
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    return-void
.end method

.method private onMove(I)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateCursorPause(I)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    .line 724
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 725
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 731
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 732
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 733
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void
.end method

.method private progressToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 792
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    if-nez v0, :cond_1

    return-object p0

    .line 799
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 801
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    return-object p0
.end method

.method private reverseInternal()V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->initCursorAndGraduations()V

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private rotateIndicatorInternal(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->rotateIndicator(I)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->rotateIndicator(I)V

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    goto :goto_0

    .line 446
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 454
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method private updateCursorTextAndDrable(I)V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setText(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateCursorToProgress(IZ)V
    .locals 3

    .line 407
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCursorToProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",needVibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->progressToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 419
    :cond_1
    iget p2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 420
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateGraduationsCoordinateRange()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    const/4 v1, 0x0

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMinGraduationsCoordinate:I

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxGraduationsCoordinate:I

    :cond_1
    :goto_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "vibrator is not support!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "GraduationView is not visible!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x28

    const/4 v2, 0x1

    .line 209
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    if-ne v0, p1, :cond_0

    return-void

    .line 762
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 763
    iget-boolean p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    if-nez p1, :cond_1

    return-void

    .line 766
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrate()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 879
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 880
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->cancelAnimate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 537
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 539
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 541
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->drawGraduations(Landroid/graphics/Canvas;)V

    .line 543
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 475
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 477
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->measureWidth(I)I

    move-result p1

    .line 478
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->measureHeight(I)I

    move-result p2

    .line 476
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 528
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 529
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", oldh: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCoordinate(II)V

    const/4 p1, 0x1

    .line 532
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 655
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    if-eqz p1, :cond_b

    .line 656
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 657
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    .line 659
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 660
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;

    if-eqz p0, :cond_b

    .line 662
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;->onInteractive(Z)V

    goto/16 :goto_2

    .line 624
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 625
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInitialTouchX:I

    sub-int v0, p1, v0

    .line 626
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mDownNotFromView:Z

    if-eqz v2, :cond_3

    if-gez v0, :cond_3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    .line 627
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-nez v3, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_4

    .line 628
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 629
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    .line 631
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-eqz v0, :cond_5

    .line 632
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->onMove(I)V

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 635
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    goto :goto_2

    .line 639
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-eqz v0, :cond_7

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    goto :goto_1

    .line 642
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    if-nez v0, :cond_8

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->onClick(I)V

    .line 645
    :cond_8
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 647
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 648
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;

    if-eqz p0, :cond_b

    .line 650
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;->onInteractive(Z)V

    goto :goto_2

    .line 606
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    if-nez v0, :cond_a

    .line 607
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->invalidDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    .line 610
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mDownNotFromView:Z

    .line 611
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 612
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInitialTouchX:I

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    .line 615
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    .line 616
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;

    if-eqz p0, :cond_b

    .line 619
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;->onInteractive(Z)V

    :cond_b
    :goto_2
    return v1

    .line 602
    :cond_c
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 866
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 868
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 870
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->cancelAnimate()V

    const/4 p1, 0x0

    .line 871
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 872
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    const/4 p1, 0x0

    .line 873
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    :goto_0
    return-void
.end method

.method public reverse(Z)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eq v0, p1, :cond_0

    .line 277
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->reverseInternal()V

    :cond_0
    return-void
.end method

.method public rotateIndicator(I)V
    .locals 1

    .line 262
    rem-int/lit16 p1, p1, 0x168

    .line 263
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    if-eq v0, p1, :cond_0

    .line 264
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    .line 265
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicatorInternal(I)V

    :cond_0
    return-void
.end method

.method public setCursorMoveCount(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    return-void
.end method

.method public setCursorTitleContents([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setFakeMotionEvent(Z)V
    .locals 0

    .line 593
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    return-void
.end method

.method public setIndependentCursorIndexList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    return-void
.end method

.method public setInteractiveListener(Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/GraduationView$IInteractiveListener;

    return-void
.end method

.method public setNeedAnimate(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    return-void
.end method

.method public setPauseIndependentIndex(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 3

    .line 465
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCoordinateCorrected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    .line 467
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorToProgress(IZ)V

    :cond_0
    return-void
.end method

.method public setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V
    .locals 3

    .line 233
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStyle style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 p1, 0x1

    .line 239
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->initCursorAndGraduations()V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateScreenFormType(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 255
    :goto_0
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->reverse(Z)V

    if-ne v1, p1, :cond_1

    const/16 v0, -0x5a

    .line 257
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    return-void
.end method
