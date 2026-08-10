.class Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;
.super Ljava/lang/Object;
.source "FullConfigUpdater.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private mScreenForm:I

.field private final mShelterExpandTopMargin:I

.field private final mShelterLeftMargin:I

.field private final mShelterTopMargin:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07006a

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterTopMargin:I

    const v0, 0x7f070068

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandTopMargin:I

    const v0, 0x7f070069

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterLeftMargin:I

    return-void
.end method


# virtual methods
.method public updateScreenForm(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    return-void
.end method

.method public updateShelter(Landroid/view/ViewGroup;)V
    .locals 4

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    iget v2, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterTopMargin:I

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 63
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    iget v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandTopMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterLeftMargin:I

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 65
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
