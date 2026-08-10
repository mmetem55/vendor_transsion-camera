.class public Lcom/transsion/camera/app/ui/aperture/ApertureView;
.super Landroid/widget/FrameLayout;
.source "ApertureView.java"


# instance fields
.field private final mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance p2, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->createUpdater()Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    return-void
.end method


# virtual methods
.method public onScreenFormChanged(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateScreenForm(I)V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
