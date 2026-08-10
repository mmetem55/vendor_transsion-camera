.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;-><init>(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;->$window:Landroid/view/Window;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    new-instance v0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    sget-object v1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;->$window:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "window.context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;->invoke()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    return-object p0
.end method
