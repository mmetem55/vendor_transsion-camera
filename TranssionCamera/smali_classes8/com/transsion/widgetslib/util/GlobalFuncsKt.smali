.class public final Lcom/transsion/widgetslib/util/GlobalFuncsKt;
.super Ljava/lang/Object;
.source "GlobalFuncs.kt"


# direct methods
.method public static final isBookPosture(Landroidx/window/layout/FoldingFeature;)Z
    .locals 2
    .param p0    # Landroidx/window/layout/FoldingFeature;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final isSeparating(Landroidx/window/layout/FoldingFeature;)Z
    .locals 2
    .param p0    # Landroidx/window/layout/FoldingFeature;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final isTableTopPosture(Landroidx/window/layout/FoldingFeature;)Z
    .locals 2
    .param p0    # Landroidx/window/layout/FoldingFeature;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p0}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object p0

    sget-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
