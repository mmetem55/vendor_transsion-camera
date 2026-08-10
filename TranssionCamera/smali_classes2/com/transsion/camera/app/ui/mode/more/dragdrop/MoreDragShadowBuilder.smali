.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MoreDragShadowBuilder.java"


# instance fields
.field private final mShadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 27
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;->mShadow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;->mShadow:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 35
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
