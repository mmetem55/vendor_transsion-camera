.class public Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;
.super Landroid/widget/FrameLayout;
.source "SpringFloatingOvalButton.java"


# static fields
.field private static final SHADOW_DY:I = 0x4

.field private static final SHADOW_RADIUS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SpringFloatingOvalTestB"


# instance fields
.field defaultImageBackgroundSize:F

.field private mBackgroundColor:I

.field private mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

.field private mDefaultImageSize:F

.field private mFloatImageTintColor:I

.field private mImgView:Landroid/widget/ImageView;

.field private mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

.field private mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPadding:I

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 56
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x12

    .line 58
    invoke-static {p1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPadding:I

    const/16 v2, 0xd

    .line 60
    invoke-static {p1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iget v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPadding:I

    invoke-virtual {p0, v3, v4, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_image_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_fab_default_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    new-array v2, v1, [I

    .line 64
    sget v3, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    aput v3, v2, v0

    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:I

    .line 67
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget v2, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_width:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 72
    sget v3, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_height:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->defaultImageBackgroundSize:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 74
    sget v4, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_src:I

    .line 75
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 76
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_background_color:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    .line 77
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 76
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mBackgroundColor:I

    .line 78
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_tint_color:I

    iget v6, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mFloatImageTintColor:I

    .line 79
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 80
    sget v5, Lcom/transsion/widgetslib/R$styleable;->FloatingOvalButton_float_image_shadow_color:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_fab_shadow_color_white:I

    .line 81
    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 80
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    .line 82
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int p2, v2

    .line 84
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int p2, v3

    .line 85
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 86
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackgroundColor(I)V

    .line 89
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setShadowColor(I)V

    .line 90
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    .line 91
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    invoke-direct {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const v2, 0x3f6147ae    # 0.88f

    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->finalValue(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    .line 92
    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->floatVlaueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->startStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endStiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    const v2, 0x3f99999a    # 1.2f

    .line 93
    invoke-virtual {p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->dampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->endDampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->view(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$4;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 94
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$3;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$3;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 104
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$2;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 112
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->addOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$1;-><init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V

    .line 119
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->addOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->build()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 129
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-object p0
.end method


# virtual methods
.method public getImage()Landroid/widget/ImageView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setImageBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 7

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v6

    aput p1, v1, v3

    .line 173
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBackgroundColor(II)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_floating_ova_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p2, v1, v6

    aput p1, v1, v3

    .line 162
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImagePadding(F)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 194
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int p1, v0

    .line 195
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1, v1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageSize(II)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 187
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mDefaultImageSize:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setImagePadding(F)V

    return-void
.end method

.method public setOnAnimationEndListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-void
.end method

.method public setOnAnimationUpdateListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-void
.end method

.method public setOnClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    return-void
.end method

.method public setOnFabTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mShadowColor:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->mImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
