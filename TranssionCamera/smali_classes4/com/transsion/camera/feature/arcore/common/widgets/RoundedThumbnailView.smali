.class public Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;
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

.field private mRoundedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 99
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 100
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapWidth:I

    .line 103
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 80
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapWidth:I

    if-ne v2, v0, :cond_0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapHeight:I

    if-eq v3, v1, :cond_1

    :cond_0
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v3, v4

    int-to-float v2, v2

    div-float/2addr v5, v2

    int-to-float v2, v1

    mul-float/2addr v4, v2

    .line 81
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 82
    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    float-to-int v5, v5

    .line 83
    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v6, v2

    div-float/2addr v6, v3

    float-to-int v2, v6

    .line 84
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 85
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    neg-int v4, v5

    int-to-float v4, v4

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->reset()V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedBitmapShader:Landroid/graphics/BitmapShader;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedRectF:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mRoundedPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapWidth:I

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->mBitmapHeight:I

    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundedThumbnailView;->reset()V

    return-void
.end method
