.class public Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;
.super Landroid/widget/TextView;
.source "GradientColorTextView.java"


# instance fields
.field private mGradientColor:[I

.field private mHeight:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBound:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mTextBound:Landroid/graphics/Rect;

    .line 36
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/arcore/R$styleable;->GradientColor:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p3, 0x0

    .line 44
    sget v0, Lcom/transsion/camera/feature/arcore/R$styleable;->GradientColor_gradient_color_start:I

    const/high16 v1, -0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    aput v0, p2, p3

    const/4 p3, 0x1

    sget v0, Lcom/transsion/camera/feature/arcore/R$styleable;->GradientColor_gradient_color_end:I

    const v1, -0xff0100

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    aput v0, p2, p3

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mGradientColor:[I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mTextBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mWidth:I

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mHeight:I

    .line 56
    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p2

    int-to-float v1, p2

    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mWidth:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float v3, p2

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mGradientColor:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GradientColorTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    return-void
.end method
