.class public Lcom/transsion/camera/app/ui/view/ScreenSupplyView;
.super Landroid/view/View;
.source "ScreenSupplyView.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# instance fields
.field private mBottomOffset:I

.field private mDensity:F

.field private mInPreviewRoundedPath:Landroid/graphics/Path;

.field private mInPreviewRoundedRadius:F

.field private mInPreviewRoundedRect:Landroid/graphics/RectF;

.field private mOrientation:I

.field private mPreviewPaint:Landroid/graphics/Paint;

.field private mPreviewPath:Landroid/graphics/Path;

.field private mPreviewRect:Landroid/graphics/RectF;

.field private mScreenFormType:I

.field private mScreenSupplyColor:I

.field private mScreenSupplyTranslucentColor:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 28
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    .line 29
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 28
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    .line 29
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    const v0, 0x7f0603f5

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 61
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 57
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPaint:Landroid/graphics/Paint;

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static is169Ratio(Landroid/graphics/RectF;)Z
    .locals 4

    .line 285
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private static is21259Ratio(Landroid/graphics/RectF;)Z
    .locals 4

    .line 295
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x4002e38e40000000L    # 2.3611111640930176

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private static is229Ratio(Landroid/graphics/RectF;)Z
    .locals 4

    .line 299
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x40038e38e0000000L    # 2.444444417953491

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private static is43Ratio(Landroid/graphics/RectF;)Z
    .locals 4

    .line 281
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private static isSameAspectRatio(DD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 304
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSquareRatio(Landroid/graphics/RectF;)Z
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private update()V
    .locals 2

    .line 84
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateForNormalAndFlip()V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateForFold()V

    :goto_1
    return-void
.end method

.method private updateForFold()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSquareRatio(Landroid/graphics/RectF;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3ea147ae    # 0.315f

    mul-float/2addr v0, v2

    const v3, 0x43a250a4    # 324.63f

    add-float/2addr v0, v3

    .line 129
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_0
    sub-float/2addr v2, v4

    div-float/2addr v2, v1

    goto/16 :goto_4

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is43Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    const/16 v2, 0xb4

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 132
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3f641893    # 0.891f

    mul-float/2addr v0, v2

    const v2, 0x4359c20c

    sub-float/2addr v0, v2

    .line 135
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    neg-float v2, v2

    const v3, 0x3dac0831    # 0.084f

    mul-float/2addr v2, v3

    const v3, 0x44871ba6

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3ea3d70a    # 0.32f

    mul-float/2addr v0, v2

    const v2, 0x43a87ae1    # 336.96f

    add-float/2addr v0, v2

    .line 138
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3eb020c5    # 0.344f

    mul-float/2addr v2, v3

    const v3, 0x44038b44

    :goto_1
    add-float/2addr v2, v3

    move v4, v2

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is169Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne v3, v0, :cond_4

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3fdccccd    # 1.725f

    mul-float/2addr v0, v2

    const v2, 0x44809666    # 1028.7f

    sub-float/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    neg-float v2, v2

    const v3, 0x3e94bc6a    # 0.2905f

    mul-float/2addr v2, v3

    const v3, 0x44c25f0a

    add-float v4, v2, v3

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f833333    # 1.025f

    mul-float/2addr v2, v3

    const v3, 0x44c932e1

    goto :goto_2

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3f018937    # 0.506f

    mul-float/2addr v0, v2

    const v2, 0x431beccd

    add-float/2addr v0, v2

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e849ba6    # 0.259f

    mul-float/2addr v2, v3

    const v3, 0x4417727f

    add-float v4, v2, v3

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3f2e5604    # 0.681f

    mul-float/2addr v2, v3

    const v3, 0x447e1666

    :goto_2
    sub-float/2addr v2, v3

    goto/16 :goto_4

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is21259Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is229Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 159
    :cond_6
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne v3, v0, :cond_7

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_7

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3f04bc6a    # 0.5185f

    mul-float/2addr v0, v2

    const v2, 0x431008f6

    add-float/2addr v0, v2

    .line 162
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e116873    # 0.142f

    mul-float/2addr v2, v3

    const v3, 0x440c472b    # 561.112f

    add-float v4, v2, v3

    .line 163
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3edba5e3    # 0.429f

    mul-float/2addr v2, v3

    const v3, 0x438c472b    # 280.556f

    goto :goto_2

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3e6f1aa0    # 0.2335f

    mul-float/2addr v0, v2

    const v2, 0x43d28979

    add-float/2addr v0, v2

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3ec83127    # 0.391f

    mul-float/2addr v2, v3

    const v3, 0x438e0062

    add-float v4, v2, v3

    .line 167
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e9c28f6    # 0.305f

    mul-float/2addr v2, v3

    const v3, 0x430e799a

    goto :goto_2

    .line 154
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3ecf5c29    # 0.405f

    mul-float/2addr v0, v2

    const v2, 0x42bc6666    # 94.2f

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e7e76c9    # 0.2485f

    mul-float/2addr v2, v3

    const v3, 0x430d547b    # 141.33f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    .line 156
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e5930be    # 0.2121f

    mul-float/2addr v2, v3

    const v3, 0x3fab851f    # 1.34f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 171
    :goto_4
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    .line 174
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    add-float/2addr v0, v5

    add-float/2addr v4, v1

    .line 177
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v1, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float v4, v2, v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateForNormalAndFlip()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSquareRatio(Landroid/graphics/RectF;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    .line 216
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v2

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    :goto_0
    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    goto/16 :goto_2

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is43Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43ba0000    # 372.0f

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3ff4cccd    # 1.9125f

    mul-float/2addr v2, v3

    const v3, 0x440b8000    # 558.0f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    sub-float v3, v2, v4

    .line 221
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is169Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3ee816f0    # 0.4533f

    mul-float/2addr v0, v2

    const v2, 0x4299999a    # 76.8f

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 224
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3ec3d70a    # 0.3825f

    mul-float/2addr v2, v3

    const v3, 0x42e66666    # 115.2f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float v3, v2, v4

    .line 225
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v4, -0x4247ae14    # -0.09f

    mul-float/2addr v2, v4

    const v4, 0x42eb3333    # 117.6f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    :goto_1
    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is229Ratio(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v2, 0x3ecf5c29    # 0.405f

    mul-float/2addr v0, v2

    const v2, 0x42bc6666    # 94.2f

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 229
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v3, 0x3e7e76c9    # 0.2485f

    mul-float/2addr v2, v3

    const v3, 0x430d547b    # 141.33f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float v3, v2, v4

    .line 230
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const v4, 0x3e5930be    # 0.2121f

    mul-float/2addr v2, v4

    const v4, 0x3fab851f    # 1.34f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    goto :goto_1

    :cond_4
    const/high16 v0, 0x43700000    # 240.0f

    .line 233
    iget v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v2

    .line 235
    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mTopOffset:I

    int-to-float v4, v4

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    .line 238
    :goto_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    div-float/2addr v4, v1

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    .line 241
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    add-float/2addr v0, v5

    add-float/2addr v3, v1

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v1, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 245
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    .line 246
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float v4, v2, v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 269
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 272
    iget p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    .line 73
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    :cond_0
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method public updateOffset(II)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mTopOffset:I

    .line 68
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mBottomOffset:I

    return-void
.end method
