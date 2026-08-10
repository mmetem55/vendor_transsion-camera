.class public Lcom/transsion/camera/app/ui/widget/graduated/indicator/SuperMoonIndicator;
.super Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;
.source "SuperMoonIndicator.java"


# instance fields
.field private final mThreshold:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;-><init>(ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    .line 29
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/SuperMoonIndicator;->mThreshold:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 3

    .line 35
    iget-object v0, p4, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/SuperMoonIndicator;->mThreshold:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/DrawableIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    :cond_0
    return-void
.end method
