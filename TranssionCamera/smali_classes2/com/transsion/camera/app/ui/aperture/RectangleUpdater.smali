.class Lcom/transsion/camera/app/ui/aperture/RectangleUpdater;
.super Ljava/lang/Object;
.source "RectangleUpdater.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private final mApertureHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07006b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/RectangleUpdater;->mApertureHeight:I

    return-void
.end method


# virtual methods
.method public updateShelter(Landroid/view/ViewGroup;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v0, -0x1000000

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 38
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/RectangleUpdater;->mApertureHeight:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
