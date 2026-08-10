.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;
.super Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;
.source "TrackRectDrawable.java"


# instance fields
.field private endColor:I

.field private startColor:I


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 26
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->startColor:I

    .line 27
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->endColor:I

    return-void
.end method


# virtual methods
.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 43
    new-instance v10, Landroid/graphics/LinearGradient;

    int-to-float v5, v0

    const/4 v0, 0x2

    new-array v7, v0, [I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->startColor:I

    const/4 v3, 0x0

    aput v2, v7, v3

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->endColor:I

    const/4 v3, 0x1

    aput v2, v7, v3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 44
    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    int-to-float v2, v1

    .line 46
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/2addr v1, v0

    add-int/2addr v2, v1

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    int-to-float v7, p0

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setEndColor(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->endColor:I

    return-void
.end method

.method public setStartColor(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/TrackRectDrawable;->startColor:I

    return-void
.end method
