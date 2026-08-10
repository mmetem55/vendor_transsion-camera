.class public Lcom/transsion/ardrawlines/view/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    const/high16 p1, -0x10000

    .line 16
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CircleView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/ardrawlines/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/transsion/ardrawlines/view/CircleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    iget-object p0, p0, Lcom/transsion/ardrawlines/view/CircleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->color:I

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/transsion/ardrawlines/view/CircleView;->radius:F

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
