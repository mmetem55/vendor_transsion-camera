.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# instance fields
.field public final mCoordinate:Landroid/graphics/Point;

.field protected final mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

.field private mMaxCoordinate:I

.field private mMinCoordinate:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 37
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;F)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->onDraw(Landroid/graphics/Canvas;F)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->drawIndicator(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;F)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p0, p2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    :cond_0
    return-void
.end method

.method public indicatorHeight()I
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public indicatorWidth()I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offset(I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int v2, v1, p1

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mMinCoordinate:I

    if-ge v2, v3, :cond_0

    .line 56
    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    .line 57
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mMaxCoordinate:I

    if-le v1, p0, :cond_1

    .line 58
    iput p0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Point;->offset(II)V

    :goto_0
    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;F)V
.end method

.method public rotateIndicator(I)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    :cond_0
    return-void
.end method

.method public setCoordinateRange(II)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mMinCoordinate:I

    .line 42
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mMaxCoordinate:I

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCoordinate(II)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 51
    iput p2, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public updateCoordinateX(I)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iput p1, p0, Landroid/graphics/Point;->x:I

    return-void
.end method
