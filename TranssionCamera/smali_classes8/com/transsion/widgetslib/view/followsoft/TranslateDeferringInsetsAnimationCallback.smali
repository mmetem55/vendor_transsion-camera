.class public Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "TranslateDeferringInsetsAnimationCallback.java"


# instance fields
.field private deferredInsetTypes:I

.field private persistentInsetTypes:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;-><init>(Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 0

    .line 19
    invoke-direct {p0, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 20
    iput p3, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->deferredInsetTypes:I

    .line 21
    iput p2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->persistentInsetTypes:I

    .line 22
    iput-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->view:Landroid/view/View;

    and-int p0, p2, p3

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
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

    .line 41
    iget p2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->deferredInsetTypes:I

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 43
    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->persistentInsetTypes:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 48
    iget v1, p2, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p2, v0

    invoke-static {v1, v2, v3, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 49
    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v3, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    .line 50
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 49
    invoke-static {v0, v2, v3, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 54
    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->view:Landroid/view/View;

    iget v1, p2, Landroidx/core/graphics/Insets;->left:I

    iget v2, p2, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->view:Landroid/view/View;

    iget v0, p2, Landroidx/core/graphics/Insets;->top:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method
