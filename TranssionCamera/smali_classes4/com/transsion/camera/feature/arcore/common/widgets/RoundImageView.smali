.class public Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_ROUND_RADIUS:I = 0x10

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderOverlay:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mRoundRadius:I

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 p1, 0x10

    .line 62
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mRoundRadius:I

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mRoundRadius:I

    .line 89
    sget-object v1, Lcom/transsion/camera/feature/arcore/R$styleable;->RoundImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->RoundImageView_round_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mRoundRadius:I

    .line 92
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->RoundImageView_round_border_overlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBorderOverlay:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 4

    .line 310
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 311
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 313
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 314
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    .line 316
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, p0

    invoke-direct {v3, v2, p0, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 241
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 248
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 249
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mReady:Z

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView$OutlineProvider;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 107
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 270
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 4

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 281
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mSetupPending:Z

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 290
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 294
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapHeight:I

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapWidth:I

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->applyColorFilter()V

    .line 305
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->updateShaderMatrix()V

    .line 306
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 7

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 326
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 328
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 331
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 334
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 115
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public isBorderOverlay()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBorderOverlay:Z

    return p0
.end method

.method public isDisableCircularTransformation()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDisableCircularTransformation:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mRoundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    return-void
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adjustViewBounds not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mBorderOverlay:Z

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->applyColorFilter()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->mDisableCircularTransformation:Z

    .line 187
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 161
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, p0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
