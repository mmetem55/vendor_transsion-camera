.class public Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;
.super Landroid/view/View;
.source "OSWideSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;,
        Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final MIN_INTERVAL_TIME:J


# instance fields
.field private isThumbOnDragging:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSecondTrackWidth:F

.field private mCurrentTrackWidth:F

.field private mDelta:F

.field private mLeft:F

.field private mMax:F

.field private mMin:F

.field private mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProgress:F

.field private mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

.field private final mRectText:Landroid/graphics/Rect;

.field private mRight:F

.field private mSecondTrackColor:I

.field private mSourceSecondTTrackWidth:F

.field private mSourceTrackWidth:F

.field private mStartTounchTime:J

.field private mStopTounchTime:J

.field private final mTextSpace:I

.field private mThumbCenterX:F

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private padding:F

.field private pressValueAnimator:Landroid/animation/ValueAnimator;

.field private unPressValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 40
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->padding:F

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mStartTounchTime:J

    .line 59
    iput-wide v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mStopTounchTime:J

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->build()V

    .line 78
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    .line 80
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarMax:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    .line 81
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarProgress:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 82
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setEnabled(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mRectText:Landroid/graphics/Rect;

    .line 91
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTextSpace:I

    .line 93
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->initConfigByPriority()V

    .line 95
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentSecondTrackWidth:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentTrackWidth:F

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceTrackWidth:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->secondTrackColor()I

    move-result p0

    return p0
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 2

    .line 295
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    .line 296
    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method private calculateProgress()F
    .locals 2

    .line 306
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    add-float/2addr v0, p0

    return v0
.end method

.method private createPressValueAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 186
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentSecondTrackWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v2, 0x3fcccccd    # 1.6f

    aput v2, v1, v0

    .line 187
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private createUnPressValueAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 201
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentSecondTrackWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    .line 202
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 504
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 503
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private formatFloat(F)F
    .locals 1

    float-to-double p0, p1

    .line 301
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 302
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 101
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 103
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    .line 105
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 107
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    .line 108
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    .line 110
    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 111
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 113
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 114
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    :cond_3
    sub-float/2addr v2, v1

    .line 117
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mDelta:F

    .line 119
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setProgress(F)V

    return-void
.end method

.method private secondTrackColor()I
    .locals 4

    .line 388
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 392
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static sp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 509
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 508
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method config(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;)V
    .locals 3

    .line 415
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->min:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    .line 416
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->max:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    .line 417
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->progress:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 418
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackWidth:I

    int-to-float v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentTrackWidth:F

    .line 419
    iget v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackWidth:I

    int-to-float v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentSecondTrackWidth:F

    .line 420
    iget v2, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackColor:I

    .line 421
    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    int-to-float p1, v0

    .line 422
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceTrackWidth:F

    int-to-float p1, v1

    .line 423
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    .line 425
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->initConfigByPriority()V

    .line 426
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;IFZ)V

    :cond_0
    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    .line 314
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 310
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 0

    .line 330
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    .line 148
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mRight:F

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTextSpace:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 151
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackLength:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mDelta:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mMin:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mThumbCenterX:F

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentTrackWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentSecondTrackWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mThumbCenterX:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 140
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSourceSecondTTrackWidth:F

    float-to-double v0, p2

    const-wide v2, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 129
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTextSpace:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    const/16 v0, 0xb4

    .line 130
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTextSpace:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentTrackWidth:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTextSpace:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mCurrentTrackWidth:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mRight:F

    .line 135
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackLength:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 366
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 367
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    const-string v0, "save_instance"

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 370
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setProgress(F)V

    return-void

    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    const-string v1, "progress"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 170
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mStopTounchTime:J

    .line 244
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_9

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    .line 247
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTouchXDown:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTouchXMove:F

    .line 248
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPreThumbCenterX:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 249
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mThumbCenterX:F

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    .line 254
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_9

    .line 257
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;IFZ)V

    goto/16 :goto_2

    .line 264
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mStopTounchTime:J

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 267
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mThumbCenterX:F

    .line 269
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 270
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;IFZ)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->pressValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->pressValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 279
    :cond_4
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->createUnPressValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->unPressValueAnimator:Landroid/animation/ValueAnimator;

    .line 280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 282
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    .line 283
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_9

    .line 284
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->performClick()Z

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_9

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mLeft:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    goto :goto_1

    .line 228
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTouchXDown:F

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mStartTounchTime:J

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->unPressValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->unPressValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :cond_7
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->createPressValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->pressValueAnimator:Landroid/animation/ValueAnimator;

    .line 234
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 235
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_9

    .line 236
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    goto :goto_2

    .line 225
    :cond_8
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    return v1

    .line 288
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->isThumbOnDragging:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public performClick()Z
    .locals 0

    .line 180
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 378
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->secondTrackColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    .line 384
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 318
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgress:F

    .line 319
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;IFZ)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    .line 349
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_0

    .line 350
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mSecondTrackColor:I

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 342
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackColor:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->mTrackColor:I

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
