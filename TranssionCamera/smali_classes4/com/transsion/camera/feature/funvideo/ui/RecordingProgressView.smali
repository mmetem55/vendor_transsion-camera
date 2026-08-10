.class public Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;
.super Landroid/view/View;
.source "RecordingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;
    }
.end annotation


# static fields
.field private static final SECTION_POSITIONS:[F

.field private static final STROKE_WIDTH_DP_1:F = 5.5f

.field private static final STROKE_WIDTH_DP_2:F = 4.0f


# instance fields
.field private mArcStartValueAnimator:Landroid/animation/ValueAnimator;

.field private mArcStopValueAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentDrawAngle:F

.field private mDuration:I

.field private mHeight:I

.field private mIsNeedMarkLine:Z

.field private mIsNeedShader:Z

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mLowLight:Z

.field private mMarkLineColor:I

.field private mMarkLineLowLightColor:I

.field private mMarkLineStartAngle:I

.field private mMarkLineSweepAngle:F

.field private mMarkPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressCallBack:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

.field private mProgressColor:I

.field private mRectF:Landroid/graphics/RectF;

.field private mShaderColors:[I

.field private mStrokeWidth:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 23
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->SECTION_POSITIONS:[F

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

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    .line 43
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    return-object p0
.end method

.method private doArcStopValueAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 219
    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStopValueAnimator:Landroid/animation/ValueAnimator;

    .line 220
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStopValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStopValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$2;-><init>(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStopValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;-><init>(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStopValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$bool;->is_need_shader:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedShader:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/funvideo/R$color;->loading_progress_start_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    aput v4, v0, v3

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/funvideo/R$color;->loading_progress_end_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mShaderColors:[I

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mStrokeWidth:F

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/funvideo/R$color;->loading_progress_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mProgressColor:I

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mStrokeWidth:F

    .line 82
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 83
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/funvideo/R$color;->loading_circle_markline_color:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 86
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineColor:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/funvideo/R$color;->loading_circle_markline_low_light_color:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 88
    invoke-virtual {v0, v3, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineLowLightColor:I

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkPaint:Landroid/graphics/Paint;

    .line 92
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mLowLight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineLowLightColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineColor:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-array p1, v1, [F

    .line 96
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b48000    # 361.0f
    .end array-data
.end method

.method private setAlpha()V
    .locals 6

    .line 140
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mDuration:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/high16 v1, 0x41900000    # 18.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 153
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 154
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x10

    .line 157
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineStartAngle:I

    .line 158
    iput-boolean v4, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/high16 v1, 0x42900000    # 72.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 143
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 144
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x47

    .line 147
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineStartAngle:I

    .line 148
    iput-boolean v4, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->setAlpha()V

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 129
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedShader:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 132
    iput v1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v4, v0

    iget v5, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mWidth:I

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mHeight:I

    .line 113
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedShader:Z

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mWidth:I

    int-to-float v3, p2

    iget p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mShaderColors:[I

    sget-object v6, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->SECTION_POSITIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 115
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mProgressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mStrokeWidth:F

    iget p3, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mWidth:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    iget p4, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mHeight:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public resetAnimator()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setProgressCallBack(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    return-void
.end method

.method public startDrawProgress(ID)V
    .locals 3

    .line 165
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mDuration:I

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-double v1, p1

    mul-double/2addr v1, p2

    double-to-long p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$1;-><init>(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineSweepAngle:F

    return-void
.end method

.method public stopDrawProgress()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mIsNeedMarkLine:Z

    .line 186
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mDuration:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/high16 v1, 0x41900000    # 18.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->doArcStopValueAnimator()V

    goto :goto_0

    .line 199
    :cond_1
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 188
    :cond_2
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    const/high16 v1, 0x42900000    # 72.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->doArcStopValueAnimator()V

    goto :goto_0

    .line 191
    :cond_3
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mCurrentDrawAngle:F

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mLowLight:Z

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 103
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineLowLightColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->mMarkLineColor:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method
