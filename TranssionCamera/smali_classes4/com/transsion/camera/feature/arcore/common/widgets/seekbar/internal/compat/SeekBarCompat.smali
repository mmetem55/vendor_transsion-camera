.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompat;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 0

    .line 118
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result p0

    return p0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    sub-int v0, p3, p1

    .line 80
    div-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, v0

    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setOutlineProvider(Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/MarkerDrawable;)V

    return-void
.end method

.method public static setRippleColor(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 61
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 0

    .line 112
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/compat/SeekBarCompatDontCrash;->setTextDirection(Landroid/widget/TextView;I)V

    return-void
.end method
