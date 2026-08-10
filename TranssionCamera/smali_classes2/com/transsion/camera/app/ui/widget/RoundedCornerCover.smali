.class public Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;
.super Landroid/view/View;
.source "RoundedCornerCover.java"


# instance fields
.field private final mColorMode:Landroid/graphics/PorterDuffXfermode;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mColorMode:Landroid/graphics/PorterDuffXfermode;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mColorMode:Landroid/graphics/PorterDuffXfermode;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mColorMode:Landroid/graphics/PorterDuffXfermode;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mColorMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RoundedCornerCover;->mRect:Landroid/graphics/RectF;

    return-void
.end method
