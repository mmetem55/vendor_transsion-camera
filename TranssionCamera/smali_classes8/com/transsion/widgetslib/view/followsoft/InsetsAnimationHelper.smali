.class public Lcom/transsion/widgetslib/view/followsoft/InsetsAnimationHelper;
.super Ljava/lang/Object;
.source "InsetsAnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs bindAnimationWithSoftInput(Landroid/view/Window;I[Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 63
    new-instance v1, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;

    .line 65
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;-><init>(II)V

    .line 69
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 71
    array-length p0, p2

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 72
    new-instance v2, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;

    .line 77
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, p1, v3, v4}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;-><init>(Landroid/view/View;III)V

    .line 72
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs bindAnimationWithSoftInput(Landroid/view/Window;[Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/transsion/widgetslib/view/followsoft/InsetsAnimationHelper;->bindAnimationWithSoftInput(Landroid/view/Window;I[Landroid/view/View;)V

    return-void
.end method

.method public static varargs bindAnimationWithSoftInputKeyboard(Landroid/view/Window;Landroid/view/View;[Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 24
    new-instance p0, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;

    .line 25
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    .line 26
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgetslib/view/followsoft/RootViewDeferringInsetsCallback;-><init>(II)V

    .line 30
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 31
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 32
    array-length p0, p2

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object p1, p2, v0

    .line 33
    new-instance v1, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;

    .line 37
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    .line 38
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;-><init>(Landroid/view/View;III)V

    .line 33
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
