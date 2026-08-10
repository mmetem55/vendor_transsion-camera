.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.super Ljava/lang/Object;
.source "Graduation.java"


# instance fields
.field public mCoordinate:Landroid/graphics/Point;

.field public mHeight:I

.field public mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

.field public mSelectable:Z

.field public mValue:I

.field public mVibrate:Z

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->onDraw(Landroid/graphics/Canvas;F)V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->drawIndicator(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    :cond_0
    return-void
.end method

.method public offset(II)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;F)V
.end method
