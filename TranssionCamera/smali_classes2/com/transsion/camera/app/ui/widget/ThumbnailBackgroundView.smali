.class public Lcom/transsion/camera/app/ui/widget/ThumbnailBackgroundView;
.super Landroid/view/View;
.source "ThumbnailBackgroundView.java"


# instance fields
.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ThumbnailBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ThumbnailBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ThumbnailBackgroundView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ThumbnailBackgroundView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
