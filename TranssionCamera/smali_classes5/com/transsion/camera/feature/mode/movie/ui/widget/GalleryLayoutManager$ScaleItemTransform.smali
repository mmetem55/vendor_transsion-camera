.class final Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$ScaleItemTransform;
.super Ljava/lang/Object;
.source "GalleryLayoutManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleItemTransform"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V
    .locals 0

    .line 1736
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$ScaleItemTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(Landroid/view/View;)V
    .locals 1

    .line 1751
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    .line 1752
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1753
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 1754
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 1

    .line 1741
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 1742
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 1743
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    .line 1745
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1746
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
