.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/Window;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 323
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 2
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    .line 326
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMLayoutStateChangeCallback$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/core/util/Consumer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    .line 328
    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    .line 329
    new-instance v1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda1;-><init>()V

    .line 328
    invoke-virtual {p0, p1, v1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    :goto_0
    return-void
.end method
