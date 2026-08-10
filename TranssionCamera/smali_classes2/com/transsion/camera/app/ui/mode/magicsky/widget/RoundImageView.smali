.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

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

    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 35
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 p1, 0x10

    .line 46
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v0, 0x10

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    .line 73
    sget-object v1, Lcom/transsion/camera/feature/mode/magicsky/R$styleable;->RoundImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    const/4 p2, 0x1

    .line 76
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBorderOverlay:Z

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->init()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 4

    .line 288
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 289
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 291
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 292
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    .line 294
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

    .line 225
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 226
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 233
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 84
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mReady:Z

    .line 88
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 254
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 4

    .line 258
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 259
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mSetupPending:Z

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 268
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 272
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->applyColorFilter()V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->updateShaderMatrix()V

    .line 284
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 7

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 306
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 309
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 312
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 99
    sget-object p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mRoundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adjustViewBounds not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->applyColorFilter()V

    .line 206
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 189
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 104
    sget-object p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, p0, :cond_0

    return-void

    .line 105
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
