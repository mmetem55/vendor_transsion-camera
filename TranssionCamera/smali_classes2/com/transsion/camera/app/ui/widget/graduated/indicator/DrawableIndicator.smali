.class public Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;
.super Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;
.source "DrawableIndicator.java"


# instance fields
.field private final mIndicator:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;-><init>(ILandroid/graphics/Paint;)V

    .line 27
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    .line 29
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 4

    .line 34
    iget p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    div-int/lit8 p4, p4, 0x2

    .line 35
    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v0, p4

    add-int/2addr v0, p4

    .line 37
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p4, p2

    sub-float/2addr p4, p3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    int-to-float v3, v2

    sub-float/2addr p4, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    float-to-int p4, p4

    int-to-float p2, p2

    sub-float/2addr p2, p3

    int-to-float p3, v2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    .line 40
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1, p4, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
