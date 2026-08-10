.class public Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;
.super Landroid/view/View;
.source "DrawBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
    }
.end annotation


# instance fields
.field private mDrawBackground:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

.field private final mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->mDrawBackground:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->mDrawBackground:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
