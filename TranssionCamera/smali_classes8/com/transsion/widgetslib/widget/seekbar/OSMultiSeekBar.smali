.class public Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;
.super Landroid/view/View;
.source "OSMultiSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;,
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private isThumbOnDragging:Z

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mDelta:F

.field private mLeft:F

.field private mMax:F

.field private mMin:F

.field private mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProcessMarginTopBottow:I

.field private mProgress:F

.field private mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

.field private mRight:F

.field private mSecondTTrackWidth:F

.field private mSecondTrackColor:I

.field private mStartTounchTime:J

.field private mStopTounchTime:J

.field private mThumbCenterX:F

.field private mThumbColor:I

.field private mThumbWidth:I

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStartTounchTime:J

    .line 55
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 70
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->build()V

    .line 73
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 75
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 76
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarProgress:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 77
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setEnabled(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->initConfigByPriority()V

    .line 92
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->secondTrackColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->thumbColor()I

    move-result p0

    return p0
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .locals 2

    .line 250
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    .line 251
    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method private calculateProgress()F
    .locals 2

    .line 261
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    add-float/2addr v0, p0

    return v0
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 493
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 492
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private formatFloat(F)F
    .locals 1

    float-to-double p0, p1

    .line 256
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 257
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private initConfigByPriority()V
    .locals 3

    .line 98
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 100
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 102
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 104
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 105
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 107
    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 108
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 110
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 111
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 113
    :cond_3
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    float-to-int v0, v1

    const/4 v1, 0x4

    .line 114
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    .line 116
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    .line 117
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void
.end method

.method private secondTrackColor()I
    .locals 4

    .line 345
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static sp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 498
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 497
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private thumbColor()I
    .locals 4

    .line 354
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 355
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 358
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method config(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;)V
    .locals 3

    .line 381
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->min:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    .line 382
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->max:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    .line 383
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->progress:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 384
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    .line 385
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 386
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    .line 387
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    .line 388
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbWidth:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    .line 389
    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbColor:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    .line 390
    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->processMarginTopBottow:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    .line 392
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->initConfigByPriority()V

    .line 393
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    :cond_0
    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mOSMultiSeekBarBuilde:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    .line 269
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    .line 265
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 0

    .line 285
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 139
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    .line 142
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float v2, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    add-float v9, v0, v2

    .line 145
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mDelta:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mMin:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v9

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTTrackWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    .line 162
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 134
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProcessMarginTopBottow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0xb4

    .line 124
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackWidth:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    .line 129
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackLength:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 321
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 322
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 323
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    const-string v0, "save_instance"

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 325
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "save_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 315
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    const-string v1, "progress"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 169
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 206
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    .line 209
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXDown:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXMove:F

    .line 210
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 211
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 216
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 218
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    goto/16 :goto_2

    .line 226
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStopTounchTime:J

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mPreThumbCenterX:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbCenterX:F

    .line 231
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->calculateProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 232
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    .line 237
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    .line 238
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_7

    .line 239
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->performClick()Z

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mLeft:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTouchXDown:F

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mStartTounchTime:J

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz v0, :cond_7

    .line 198
    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_2

    .line 192
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    return v1

    .line 243
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->isThumbOnDragging:Z

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public performClick()Z
    .locals 0

    .line 179
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->secondTrackColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 336
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->thumbColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 339
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_solid_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mThumbColor:I

    .line 341
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 273
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgress:F

    .line 274
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mProgressListener:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    .line 304
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_0

    .line 305
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mSecondTrackColor:I

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 297
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    if-eq v0, p1, :cond_0

    .line 298
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->mTrackColor:I

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
