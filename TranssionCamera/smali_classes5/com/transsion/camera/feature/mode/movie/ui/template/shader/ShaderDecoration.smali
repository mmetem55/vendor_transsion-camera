.class public Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ShaderDecoration.java"


# static fields
.field private static final ANIM_DURATION:J = 0x12cL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBottomGradientHeight:I

.field private mBottomHeight:I

.field private mEndGradient:Landroid/graphics/LinearGradient;

.field private mEndGradientPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftGradientWidth:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightGradientWidth:I

.field private mStartGradient:Landroid/graphics/LinearGradient;

.field private mStartGradientPaint:Landroid/graphics/Paint;

.field private mTopGradientHeight:I

.field private mTopHeight:I

.field private mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$JingH6ysPne5JRAlebG8LjmNwgI(Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->lambda$startTopAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5RKOc3sFZhBpPl1jOVryZhNoVk(Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->lambda$startBottomAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)V
    .locals 3

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mView:Landroid/view/View;

    .line 70
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradientPaint:Landroid/graphics/Paint;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradientPaint:Landroid/graphics/Paint;

    .line 75
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->initFields(I)V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;)V
    .locals 8

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mLeftGradientWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mRightGradientWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradientPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;)V
    .locals 9

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 175
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mTopGradientHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightEnd:I

    sub-int v2, v0, v1

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mBottomGradientHeight:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    int-to-float v6, v2

    sub-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradientPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightEnd:I

    sub-int v1, v0, v1

    int-to-float v4, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    int-to-float v5, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initFields(I)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mOrientation:I

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->isHorizontal(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mLeftGradientWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mLeftGradientWidth:I

    .line 84
    iget p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mRightGradientWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mRightGradientWidth:I

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->initHorizontalGradient()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopHeightStart:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mTopHeight:I

    .line 90
    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightStart:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mBottomHeight:I

    .line 91
    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopGradientHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mTopGradientHeight:I

    .line 92
    iget p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomGradientHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mBottomGradientHeight:I

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->initVerticalGradient()V

    :goto_0
    return-void
.end method

.method private initHorizontalGradient()V
    .locals 18

    move-object/from16 v0, p0

    .line 102
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mLeftGradientWidth:I

    int-to-float v4, v1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradient:Landroid/graphics/LinearGradient;

    .line 105
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mWidth:I

    iget v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mRightGradientWidth:I

    sub-int v3, v2, v3

    int-to-float v11, v3

    int-to-float v13, v2

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x1000000

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private initVerticalGradient()V
    .locals 18

    move-object/from16 v0, p0

    .line 111
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mTopGradientHeight:I

    int-to-float v5, v1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mStartGradient:Landroid/graphics/LinearGradient;

    .line 115
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mHeight:I

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v3, v3, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightEnd:I

    sub-int v4, v2, v3

    iget v5, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mBottomGradientHeight:I

    sub-int/2addr v4, v5

    int-to-float v12, v4

    sub-int/2addr v2, v3

    int-to-float v14, v2

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x1000000

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mEndGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private invalidate()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private isHorizontal(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$startBottomAnim$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mBottomHeight:I

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startTopAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mTopHeight:I

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->invalidate()V

    return-void
.end method

.method private startBottomAnim()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightStart:I

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mBottomHeightEnd:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 140
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startTopAnim()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopHeightStart:I

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopHeightEnd:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 128
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 158
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->mOrientation:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->isHorizontal(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->drawHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->drawVertical(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->startTopAnim()V

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;->startBottomAnim()V

    return-void
.end method
