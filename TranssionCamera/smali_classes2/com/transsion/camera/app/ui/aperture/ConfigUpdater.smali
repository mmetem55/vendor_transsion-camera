.class Lcom/transsion/camera/app/ui/aperture/ConfigUpdater;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private final mShelterTopMargin:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07006a

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/ConfigUpdater;->mShelterTopMargin:I

    return-void
.end method


# virtual methods
.method public updateShelter(Landroid/view/ViewGroup;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    .line 38
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/ConfigUpdater;->mShelterTopMargin:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
