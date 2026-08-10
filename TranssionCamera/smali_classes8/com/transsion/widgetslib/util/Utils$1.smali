.class Lcom/transsion/widgetslib/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/Utils;->setWindowInset(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/transsion/widgetslib/util/Utils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/transsion/widgetslib/util/Utils$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p2

    .line 277
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/transsion/widgetslib/util/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 279
    iget-object p0, p0, Lcom/transsion/widgetslib/util/Utils$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 282
    new-instance v1, Landroid/view/WindowInsets$Builder;

    invoke-direct {v1, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr p2, v2

    iget v2, v0, Landroid/graphics/Insets;->top:I

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_0

    .line 283
    :cond_1
    iget p0, v0, Landroid/graphics/Insets;->right:I

    :goto_0
    invoke-static {v4, v2, p0, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    .line 282
    invoke-virtual {v1, p2, p0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p2

    goto :goto_2

    .line 284
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 285
    new-instance v1, Landroid/view/WindowInsets$Builder;

    invoke-direct {v1, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr p2, v2

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    .line 286
    :cond_3
    iget p0, v0, Landroid/graphics/Insets;->left:I

    :goto_1
    iget v0, v0, Landroid/graphics/Insets;->top:I

    invoke-static {p0, v0, v4, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    .line 285
    invoke-virtual {v1, p2, p0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p2

    goto :goto_2

    .line 288
    :cond_4
    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result p2

    iget v1, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, v1, v4, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p2

    .line 293
    :cond_5
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
