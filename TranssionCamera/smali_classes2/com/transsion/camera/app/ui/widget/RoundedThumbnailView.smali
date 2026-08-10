.class public Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;
.super Landroid/widget/ImageView;
.source "RoundedThumbnailView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mRoundedBitmapShader:Landroid/graphics/BitmapShader;

.field private mRoundedMatrix:Landroid/graphics/Matrix;

.field private mRoundedPaint:Landroid/graphics/Paint;

.field private mRoundedRadius:F

.field private mRoundedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070726

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 113
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 114
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 117
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 91
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    if-ne v3, v0, :cond_0

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    if-eq v4, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v0, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 92
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 93
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    float-to-int v4, v4

    .line 94
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    div-float/2addr v5, v0

    float-to-int v0, v5

    .line 95
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 96
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    neg-int v3, v4

    int-to-float v3, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRadius:F

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapWidth:I

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->mBitmapHeight:I

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    :goto_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->reset()V

    return-void
.end method
