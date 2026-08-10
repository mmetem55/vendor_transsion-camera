.class public final Landroidx/window/java/embedding/SplitControllerCallbackAdapter;
.super Ljava/lang/Object;
.source "SplitControllerCallbackAdapter.kt"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# instance fields
.field private final controller:Landroidx/window/embedding/SplitController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/embedding/SplitController;)V
    .locals 1
    .param p1    # Landroidx/window/embedding/SplitController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->controller:Landroidx/window/embedding/SplitController;

    return-void
.end method


# virtual methods
.method public final addSplitListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->controller:Landroidx/window/embedding/SplitController;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/window/embedding/SplitController;->addSplitListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public final removeSplitListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->controller:Landroidx/window/embedding/SplitController;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitController;->removeSplitListener(Landroidx/core/util/Consumer;)V

    return-void
.end method
