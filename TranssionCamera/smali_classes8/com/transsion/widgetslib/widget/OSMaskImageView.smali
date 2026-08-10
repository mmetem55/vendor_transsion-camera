.class public Lcom/transsion/widgetslib/widget/OSMaskImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "OSMaskImageView.java"


# static fields
.field private static final COMPLETE_ANIM_DURATION:I = 0x2bc

.field private static final END_SCALE:F = 1.15f

.field private static final FIRST_PHASE_ANIM_DURATION:I = 0x82

.field private static final START_SCALE:F = 1.0f


# instance fields
.field private mAlpha:I

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mBitmapDst:Landroid/graphics/Bitmap;

.field private mBitmapSrc:Landroid/graphics/Bitmap;

.field private mIsCanceledPhaseAnimator:Z

.field private mMaskAnimator:Landroid/animation/ValueAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPhaseAnimator:Landroid/animation/AnimatorSet;

.field private final mRectF:Landroid/graphics/RectF;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    .line 48
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    .line 53
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    .line 58
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/widget/OSMaskImageView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlpha:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mIsCanceledPhaseAnimator:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/OSMaskImageView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mIsCanceledPhaseAnimator:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private getSourceImage()V
    .locals 11

    .line 183
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 189
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x1

    new-array v6, v4, [I

    const v7, 0x10100a1

    const/4 v8, 0x0

    aput v7, v6, v8

    const v7, -0xff0100

    .line 200
    invoke-virtual {v2, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 203
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    .line 204
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v3, v1

    .line 205
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 206
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 207
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initMaskAnimator()V

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v9, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v9, v2

    div-double/2addr v9, v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 216
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v5, v1, v8

    aput v0, v1, v4

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initMaskAnimator()V

    .line 67
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initAlphaAnimator()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initPhaseAnimator()V

    return-void
.end method

.method private initAlphaAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 91
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x82

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3c23d70a    # 0.01f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$3;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private initMaskAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 72
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initPhaseAnimator()V
    .locals 8

    .line 115
    new-instance v0, Lcom/transsion/widgetslib/widget/OSMaskImageView$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$4;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 126
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x82

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    new-instance v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v4, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [F

    .line 130
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x23a

    .line 131
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    new-instance v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v3, v4, v5, v5, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    .line 136
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 137
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$5;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelSelectedAnimRunning()V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public isSelectedAnimRunning()Z
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 249
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mSelected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 257
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlpha:I

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    .line 261
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapDst:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 262
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 222
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mSelected:Z

    return-void
.end method

.method public setSelectedAnim(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public setSelectedAnim(ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getSourceImage()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mBitmapSrc:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 274
    :cond_1
    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p1, :cond_6

    .line 277
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initMaskAnimator()V

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 286
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 288
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initPhaseAnimator()V

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    .line 292
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 294
    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPhaseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 296
    :cond_6
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 300
    :cond_7
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    .line 301
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->initAlphaAnimator()V

    .line 303
    :cond_8
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 304
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method
