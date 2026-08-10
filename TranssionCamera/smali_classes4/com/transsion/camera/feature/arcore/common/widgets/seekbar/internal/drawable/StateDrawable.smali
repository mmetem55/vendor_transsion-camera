.class public abstract Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StateDrawable.java"


# instance fields
.field protected mAlpha:I

.field protected mCurrentColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTintStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 25
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mAlpha:I

    .line 29
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private updateTint([I)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 52
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    if-eq p1, v0, :cond_0

    .line 53
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method abstract doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mAlpha:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method modulateAlpha(I)I
    .locals 1

    .line 90
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mAlpha:I

    shr-int/lit8 v0, p0, 0x7

    add-int/2addr p0, v0

    mul-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x8

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mAlpha:I

    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    .line 71
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->updateTint([I)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
