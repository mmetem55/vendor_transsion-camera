.class final Landroidx/window/java/area/WindowAreaControllerJavaAdapter$addRearDisplayStatusListener$1$1$1;
.super Ljava/lang/Object;
.source "WindowAreaControllerJavaAdapter.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/java/area/WindowAreaControllerJavaAdapter$addRearDisplayStatusListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic $consumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/area/WindowAreaStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/area/WindowAreaStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/java/area/WindowAreaControllerJavaAdapter$addRearDisplayStatusListener$1$1$1;->$consumer:Landroidx/core/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Landroidx/window/area/WindowAreaStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/window/area/WindowAreaStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/area/WindowAreaStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 76
    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerJavaAdapter$addRearDisplayStatusListener$1$1$1;->$consumer:Landroidx/core/util/Consumer;

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Landroidx/window/area/WindowAreaStatus;

    invoke-virtual {p0, p1, p2}, Landroidx/window/java/area/WindowAreaControllerJavaAdapter$addRearDisplayStatusListener$1$1$1;->emit(Landroidx/window/area/WindowAreaStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
