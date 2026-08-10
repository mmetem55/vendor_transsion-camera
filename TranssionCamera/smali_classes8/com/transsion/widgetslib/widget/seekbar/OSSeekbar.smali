.class public Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.super Landroid/view/View;
.source "OSSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ALIGNCENTER:I = 0x1

.field private static final ALIGNLEFT:I = 0x0

.field private static final ALIGNRIGHT:I = 0x2


# instance fields
.field private isCenterXAnimation:Z

.field private isEnterActionMove:Z

.field private isThumbOnDragging:Z

.field private isTouchMove:Z

.field private isTouchOnThumb:Z

.field private mCenterThumbHalfLen:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentThumbInHalfWidth:F

.field private mCurrentThumbInScal:F

.field private mCurrentThumbOutScal:F

.field private mDelta:F

.field private mFromThumbCenterX:F

.field private mFromThumbHalfLen:F

.field private mLeft:F

.field private mMax:F

.field private mMaxThumbInHalfWidth:F

.field private mMaxThumbInScal:F

.field private mMaxThumbStokeScal:F

.field private mMin:F

.field private mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProgress:F

.field private mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

.field private mRight:F

.field private mSecondTrackColor:I

.field private mSourceSecondTTrackWidth:F

.field private mSourceThumbInHalfHeight:F

.field private mSourceThumbInHalfWidth:F

.field private mSourceTrackWidth:F

.field private mThumbCenterX:F

.field private final mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mThumbCenterY:F

.field mThumbHalfWidth:F

.field private mThumbInScalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbInsideColor:I

.field private mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbOutColor:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private mThumbScalType:I

.field private mThumbStokeWidth:F

.field private mThumbWidthAnimator:Landroid/animation/ValueAnimator;

.field private final mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mToThumbCenterX:F

.field private mToThumbHalfLen:F

.field private mTouchThumbX:F

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mTrackColor:I

.field private mTrackLength:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    .line 94
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    .line 113
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    .line 150
    new-instance v1, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 154
    new-instance v1, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 167
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->build()V

    .line 170
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    .line 172
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    .line 173
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarProgress:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 174
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setEnabled(Z)V

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 178
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 180
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 183
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 185
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 186
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p1, 0x3e800000    # 0.25f

    .line 188
    invoke-virtual {v1, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMaxSpeedFractor(F)V

    .line 189
    invoke-virtual {v1, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMinSpeedFractor(F)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->initConfigByPriority()V

    .line 193
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->secondTrackColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbOutColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    return p0
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 2

    .line 698
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    .line 699
    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method private calculateProgress(F)F
    .locals 1

    .line 709
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    add-float/2addr p1, p0

    return p1
.end method

.method private createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 625
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 626
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 627
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 628
    new-instance p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 649
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 650
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 651
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 652
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 669
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$5;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 604
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 605
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 606
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 607
    new-instance p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 999
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 998
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private formatFloat(F)F
    .locals 1

    float-to-double p0, p1

    .line 704
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 705
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 199
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 201
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    .line 203
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 205
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    .line 206
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    .line 208
    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 209
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 211
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 212
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    :cond_3
    sub-float/2addr v2, v1

    .line 214
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    .line 215
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void
.end method

.method private isThumbIntervalAnimationRun()Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

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

.method private secondTrackColor()I
    .locals 4

    .line 827
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 828
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 831
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static sp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 1004
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 1003
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private startThumbCenterXTrackAnimator(FF)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private startThumbIntervalAnimation(FFJ)V
    .locals 2

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    .line 565
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 570
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    .line 573
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 574
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    sub-float p3, p2, p1

    .line 575
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 576
    iget p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_3

    sub-float/2addr p3, p4

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    .line 580
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    move p3, v0

    .line 582
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    .line 583
    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    .line 584
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    goto :goto_1

    .line 586
    :cond_3
    iget p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    .line 587
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    .line 588
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    .line 590
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    .line 591
    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    .line 592
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbScalAnimator(FF)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 533
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbWidthAnimator(FF)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 553
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbWidthTrackAnimator(FF)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private thumbOutColor()I
    .locals 4

    .line 818
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 819
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 822
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private updateThumbWidthAndCenterXTrack()Z
    .locals 5

    .line 488
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v2, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v0

    or-int/2addr v1, v0

    .line 491
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v2, 0x3e83126f    # 0.256f

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v0

    or-int/2addr v1, v0

    .line 495
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 496
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 497
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, p0, v2, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_1
    return v1
.end method


# virtual methods
.method config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V
    .locals 6

    .line 854
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    .line 855
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    .line 856
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 857
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    .line 858
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 859
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    .line 860
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 861
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    .line 862
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceSecondTTrackWidth:F

    .line 863
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    iget v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 865
    iput v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, v3

    .line 867
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    .line 868
    iget v5, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    if-ge v5, v1, :cond_1

    .line 869
    iput v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    .line 870
    :cond_1
    iget v5, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    .line 871
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    .line 872
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 873
    iget v2, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    .line 874
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    int-to-float v0, v0

    .line 875
    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    mul-float/2addr v0, p1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    .line 879
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 880
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    .line 883
    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->initConfigByPriority()V

    .line 884
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_4

    .line 885
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_4
    const/4 p1, 0x0

    .line 888
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    .line 890
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    .line 850
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    .line 717
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 713
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public getProgress()I
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 733
    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    return p0

    .line 741
    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 243
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    .line 246
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    .line 247
    iget v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    .line 249
    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    if-nez v3, :cond_0

    .line 250
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMin:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 254
    :cond_0
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float v4, v1, v3

    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float/2addr v4, v5

    add-float/2addr v2, v3

    sub-float v6, v2, v5

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 260
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceSecondTTrackWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float v4, v1, v3

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->updateThumbWidthAndCenterXTrack()Z

    move-result v1

    .line 270
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    .line 271
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 273
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    mul-float v7, v6, v3

    sub-float v10, v5, v7

    mul-float/2addr v6, v3

    add-float v12, v5, v6

    .line 275
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    mul-float v6, v5, v3

    sub-float v6, v2, v6

    sub-float v5, v4, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    move v5, v6

    goto :goto_1

    :cond_2
    :goto_0
    mul-float/2addr v4, v3

    sub-float v5, v2, v4

    add-float/2addr v2, v4

    goto :goto_1

    .line 277
    :cond_3
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    sub-float v6, v4, v5

    add-float/2addr v4, v6

    mul-float/2addr v4, v3

    sub-float v4, v2, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    move v5, v4

    .line 294
    :goto_1
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    mul-float/2addr v4, v6

    .line 295
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float v2, v9, v4

    const/4 v5, 0x0

    .line 297
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    sub-float v15, v10, v4

    add-float v2, v11, v4

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v17, v12, v4

    .line 301
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    mul-float/2addr v2, v3

    add-float v19, v2, v4

    .line 303
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v18, v19

    move-object/from16 v20, v3

    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 304
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v15, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v2

    move v14, v2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 238
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 220
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 221
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    .line 222
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x14

    .line 224
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 225
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p2

    :cond_0
    const/16 v0, 0xb4

    .line 227
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 228
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    .line 232
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 777
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 778
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 779
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    const-string v0, "save_instance"

    .line 780
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 781
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void

    .line 784
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 769
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 770
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 771
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    const-string v1, "progress"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 316
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const-wide/16 v3, 0x1f4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_c

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_c

    goto/16 :goto_6

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_b

    .line 359
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-nez v0, :cond_1

    .line 360
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    invoke-direct {p0, v5, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbScalAnimator(FF)V

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    .line 362
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    goto/16 :goto_2

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 366
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXDown:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXMove:F

    .line 367
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXMove:F

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    .line 369
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    if-nez v0, :cond_2

    .line 370
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimation(FFJ)V

    goto :goto_0

    .line 373
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 374
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v3

    .line 382
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    .line 383
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    add-float/2addr v3, v0

    .line 384
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    move v3, v0

    .line 387
    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 388
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    .line 389
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    goto :goto_0

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    .line 392
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthTrackAnimator(FF)V

    .line 393
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbCenterXTrackAnimator(FF)V

    if-eqz v1, :cond_7

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 398
    :cond_7
    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    .line 399
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    goto :goto_1

    .line 402
    :cond_8
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    .line 403
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    move v1, v2

    .line 404
    :cond_9
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthTrackAnimator(FF)V

    if-eqz v1, :cond_a

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 409
    :cond_a
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    .line 412
    :cond_b
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    goto/16 :goto_6

    .line 416
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 417
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_11

    .line 418
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 419
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 423
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-eqz v0, :cond_e

    .line 424
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    invoke-direct {p0, v0, v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbScalAnimator(FF)V

    .line 425
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iput v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    :cond_d
    if-nez v0, :cond_e

    .line 429
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_e

    .line 430
    invoke-direct {p0, v0, v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthAnimator(FF)V

    .line 433
    :cond_e
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_10

    .line 434
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    .line 435
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    goto :goto_3

    .line 437
    :cond_f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimation(FFJ)V

    .line 440
    :cond_10
    :goto_3
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    .line 443
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    .line 444
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_12

    .line 445
    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    .line 447
    :cond_12
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    .line 448
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    goto/16 :goto_6

    .line 334
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->performClick()Z

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_19

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    goto :goto_5

    .line 342
    :cond_14
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXDown:F

    .line 343
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_15

    .line 344
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    .line 346
    :cond_15
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    add-float/2addr v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    sub-float/2addr v3, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_16

    goto :goto_4

    .line 351
    :cond_16
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    goto :goto_6

    .line 349
    :cond_17
    :goto_4
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    goto :goto_6

    .line 339
    :cond_18
    :goto_5
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    return v1

    :cond_19
    :goto_6
    return v2
.end method

.method public performClick()Z
    .locals 0

    .line 326
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 789
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->secondTrackColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 792
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbOutColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 793
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    goto :goto_0

    .line 795
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 796
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_solid_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 797
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    .line 799
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 721
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 722
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    .line 760
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_0

    .line 761
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbInsideColor(I)V
    .locals 1

    .line 811
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    if-eq v0, p1, :cond_0

    .line 812
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbOutColor(I)V
    .locals 1

    .line 804
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    if-eq v0, p1, :cond_0

    .line 805
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 753
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    if-eq v0, p1, :cond_0

    .line 754
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    .line 755
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
