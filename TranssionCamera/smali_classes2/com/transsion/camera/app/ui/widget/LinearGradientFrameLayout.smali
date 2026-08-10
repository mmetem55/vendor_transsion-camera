.class public Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;
.super Landroid/widget/FrameLayout;
.source "LinearGradientFrameLayout.java"


# instance fields
.field private mGradientLength:I

.field private mGradientPadding:I

.field private mHeight:I

.field private mLeftGradient:Landroid/graphics/LinearGradient;

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbb

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientLength:I

    const/16 p1, 0x9d

    .line 25
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientPadding:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xbb

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientLength:I

    const/16 p1, 0x9d

    .line 25
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientPadding:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xbb

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientLength:I

    const/16 p1, 0x9d

    .line 25
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientPadding:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientPadding:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientPadding:I

    :goto_0
    int-to-float v1, v1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mLeftGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, 0x0

    .line 67
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mHeight:I

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mLeftGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    if-ne p3, p4, :cond_0

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    move v7, v1

    .line 52
    :goto_0
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    int-to-float p4, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, p4, v0

    iget p4, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mGradientLength:I

    int-to-float v5, p4

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, p3

    move v4, v6

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mLeftGradient:Landroid/graphics/LinearGradient;

    .line 53
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mWidth:I

    .line 54
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/LinearGradientFrameLayout;->mHeight:I

    return-void
.end method
