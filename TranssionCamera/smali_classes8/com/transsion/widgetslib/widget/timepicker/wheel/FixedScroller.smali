.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
.super Ljava/lang/Object;
.source "FixedScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFixedFlingValue:F

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 70
    sput-object v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 71
    sput-object v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 91
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 95
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 103
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 107
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    move v1, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 109
    :cond_4
    sget-object v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    sget-object v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez p2, :cond_0

    .line 137
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 139
    :cond_0
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPpi:F

    .line 142
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    .line 143
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlywheel:Z

    const/high16 p1, 0x3e800000    # 0.25f

    .line 145
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 1

    .line 161
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPpi:F

    const v0, 0x43c10b3d

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private getSplineDeceleration(F)D
    .locals 1

    .line 463
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private getSplineFlingDistance(F)D
    .locals 6

    .line 473
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 474
    sget p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 475
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 4

    .line 467
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineDeceleration(F)D

    move-result-wide p0

    .line 468
    sget v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 469
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 486
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 487
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .line 265
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 271
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 272
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v7, 0x64

    if-ge v4, v7, :cond_2

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    .line 286
    sget-object v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->SPLINE_POSITION:[F

    aget v4, v3, v4

    .line 287
    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float v6, v3, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v6

    add-float v5, v4, v0

    .line 292
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDistance:I

    int-to-float v0, v0

    mul-float/2addr v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v0

    iput v6, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrVelocity:F

    .line 294
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 296
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 297
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 299
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 301
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 302
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 304
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    .line 305
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 275
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 276
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    goto :goto_0

    .line 312
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    .line 313
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    .line 314
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    :cond_5
    :goto_0
    return v2
.end method

.method public extendDuration(I)V
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    .line 501
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 502
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 388
    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez v3, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getCurrVelocity()F

    move-result v3

    .line 391
    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 392
    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iget v6, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    float-to-double v6, v4

    float-to-double v8, v5

    .line 393
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v3

    mul-float/2addr v5, v3

    move v3, p3

    int-to-float v6, v3

    .line 400
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    move v7, p4

    int-to-float v8, v7

    .line 401
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    add-float/2addr v6, v4

    float-to-int v3, v6

    add-float/2addr v8, v5

    float-to-int v4, v8

    move v7, v4

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move v7, p4

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 407
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v4, 0x0

    .line 408
    iput-boolean v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    int-to-double v4, v3

    int-to-double v8, v7

    .line 410
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 412
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mVelocity:F

    .line 413
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineFlingDuration(F)I

    move-result v5

    iput v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    .line 414
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    .line 415
    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    .line 416
    iput v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    int-to-float v3, v3

    div-float/2addr v3, v4

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v6, v7

    div-float v8, v6, v4

    .line 421
    :goto_2
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getSplineFlingDistance(F)D

    move-result-wide v6

    .line 422
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-double v9, v4

    mul-double/2addr v9, v6

    double-to-int v4, v9

    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDistance:I

    move/from16 v4, p5

    .line 424
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    move/from16 v4, p6

    .line 425
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    move/from16 v4, p7

    .line 426
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    move/from16 v4, p8

    .line 427
    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    float-to-double v3, v3

    mul-double/2addr v3, v6

    .line 429
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 431
    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 432
    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    float-to-double v3, v8

    mul-double/2addr v6, v3

    .line 434
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 436
    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMaxY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 437
    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMinY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 439
    iput v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 2

    .line 220
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrVelocity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mVelocity:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->timePassed()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x44fa0000    # 2000.0f

    div-float/2addr v1, p0

    sub-float p0, v0, v1

    :goto_0
    return p0
.end method

.method public final getCurrX()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrX:I

    return p0
.end method

.method public final getCurrY()I
    .locals 0

    .line 210
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I

    return p0
.end method

.method public final getDuration()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    return p0
.end method

.method public final getFinalX()I
    .locals 0

    .line 248
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    return p0
.end method

.method public final getFinalY()I
    .locals 0

    .line 257
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    return p0
.end method

.method public getFixedFlingValue()F
    .locals 4

    .line 447
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 450
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 451
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    if-ge v0, v1, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 455
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_2

    .line 456
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 458
    :cond_2
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    mul-float/2addr v0, p0

    return v0

    .line 452
    :cond_3
    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return p0
.end method

.method public final getStartX()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    return p0
.end method

.method public final getStartY()I
    .locals 0

    .line 239
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    return p0
.end method

.method public final isFinished()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 2

    .line 545
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 546
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFinalX(I)V
    .locals 1

    .line 523
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    .line 524
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    const/4 p1, 0x0

    .line 525
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 1

    .line 536
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    .line 537
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    const/4 p1, 0x0

    .line 538
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    return-void
.end method

.method public setFixedFlingValue(F)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeceleration:F

    .line 157
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFlingFriction:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 334
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mMode:I

    .line 353
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinished:Z

    .line 354
    iput p5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    .line 355
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    .line 356
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartX:I

    .line 357
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartY:I

    add-int/2addr p1, p3

    .line 358
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 359
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFinalY:I

    int-to-float p1, p3

    .line 360
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaX:F

    int-to-float p1, p4

    .line 361
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDeltaY:F

    .line 362
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 363
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mFixedFlingValue:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 512
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
