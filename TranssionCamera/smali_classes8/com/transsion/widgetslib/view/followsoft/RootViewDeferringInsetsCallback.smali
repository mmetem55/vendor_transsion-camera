.class public Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "RootViewDeferringInsetsCallback.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field private deferredInsetTypes:I

.field private deferredInsets:Z

.field private lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private persistentInsetTypes:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 31
    iput-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 22
    iput p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    .line 23
    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int p0, p1, p2

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getNavigationBarHeight(Landroid/content/res/Resources;)I
    .locals 3

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 72
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 44
    iput-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 47
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    if-eqz v0, :cond_0

    .line 48
    iget p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->persistentInsetTypes:I

    iget p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    or-int/2addr p0, v0

    .line 56
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    .line 57
    iget p2, p0, Landroidx/core/graphics/Insets;->bottom:I

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->dp2px(I)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 58
    iget p2, p0, Landroidx/core/graphics/Insets;->left:I

    iget v0, p0, Landroidx/core/graphics/Insets;->top:I

    iget v1, p0, Landroidx/core/graphics/Insets;->right:I

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    :cond_1
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    .line 97
    iget-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->lastWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->view:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 98
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :cond_0
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsetTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;->deferredInsets:Z

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    return-object p1
.end method
