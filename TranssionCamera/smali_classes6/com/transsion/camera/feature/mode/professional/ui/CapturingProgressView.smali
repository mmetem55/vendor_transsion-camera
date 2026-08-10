.class public Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;
.super Landroid/view/View;
.source "CapturingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
    }
.end annotation


# static fields
.field private static final SECTION_POSITIONS:[F


# instance fields
.field private mArcStartValueAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentDrawAngle:F

.field private mHeight:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

.field private mRectF:Landroid/graphics/RectF;

.field private mShaderColors:[I

.field private mStrokeWidth:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 22
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->SECTION_POSITIONS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mShaderColors:[I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->capture_stroke_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 61
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-array p1, v0, [F

    .line 64
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    .line 65
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x43b48000    # 361.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    .line 74
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    int-to-float v3, p2

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mShaderColors:[I

    sget-object v6, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->SECTION_POSITIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 75
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    iget p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    iget p4, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-void
.end method

.method public startDrawProgress(J)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopDrawProgress()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    return-void
.end method
