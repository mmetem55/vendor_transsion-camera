.class public Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z

.field private static final DEFAULT_BORDER_WIDTH:I

.field private static final DEFAULT_CIRCLE_BACKGROUND_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mCircleBackgroundColor:I

.field private final mCircleBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 55
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 71
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    .line 73
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    .line 103
    sget-object v2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView_civ_border_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    .line 106
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView_civ_border_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    .line 107
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView_civ_border_overlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderOverlay:Z

    .line 110
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView_civ_circle_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    goto :goto_0

    .line 113
    :cond_0
    sget p2, Lcom/transsion/camera/feature/arcore/R$styleable;->CircleImageView_civ_fill_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 114
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private applyColorFilter()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .locals 5

    .line 445
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 446
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 450
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 451
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    div-float/2addr v0, v4

    add-float/2addr p0, v0

    .line 453
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v2

    add-float v2, v3, v1

    add-float/2addr v1, p0

    invoke-direct {v0, v3, p0, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 360
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 361
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 367
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    .line 368
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 374
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private inTouchableArea(FF)Z
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRadius:F

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 2

    .line 124
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mReady:Z

    .line 128
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 131
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mSetupPending:Z

    :cond_0
    return-void
.end method

.method private initializeBitmap()V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 389
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    .line 393
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 394
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mSetupPending:Z

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 403
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 407
    :cond_2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapHeight:I

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapWidth:I

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRadius:F

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 429
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRadius:F

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->applyColorFilter()V

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->updateShaderMatrix()V

    .line 435
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private updateShaderMatrix()V
    .locals 7

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 463
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 465
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 468
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 471
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    return p0
.end method

.method public getBorderWidth()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    return p0
.end method

.method public getCircleBackgroundColor()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getFillColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->getCircleBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 139
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public isBorderOverlay()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderOverlay:Z

    return p0
.end method

.method public isDisableCircularTransformation()Z
    .locals 0

    .line 297
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDisableCircularTransformation:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderRadius:F

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->inTouchableArea(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adjustViewBounds not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 203
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderColor:I

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 292
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderOverlay:Z

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 275
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 279
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mBorderWidth:I

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method public setCircleBackgroundColor(I)V
    .locals 1

    .line 221
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundColor:I

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mCircleBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setCircleBackgroundColorResource(I)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setCircleBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->applyColorFilter()V

    .line 341
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDisableCircularTransformation(Z)V
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDisableCircularTransformation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 305
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->mDisableCircularTransformation:Z

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setCircleBackgroundColor(I)V

    return-void
.end method

.method public setFillColorResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setCircleBackgroundColorResource(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 311
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 324
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 330
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->initializeBitmap()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->setup()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 144
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, p0, :cond_0

    return-void

    .line 145
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
