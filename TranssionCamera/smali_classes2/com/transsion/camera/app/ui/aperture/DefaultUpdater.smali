.class Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;
.super Ljava/lang/Object;
.source "DefaultUpdater.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private final mApertureSize:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07006b

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    return-void
.end method

.method private getCutoutBounds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public updateShelter(Landroid/view/ViewGroup;)V
    .locals 5

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->getCutoutBounds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 51
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
