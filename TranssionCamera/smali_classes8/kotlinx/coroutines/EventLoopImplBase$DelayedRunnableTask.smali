.class final Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;
.super Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/EventLoopImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedRunnableTask"
.end annotation


# instance fields
.field private final block:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 496
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;-><init>(J)V

    .line 495
    iput-object p3, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 497
    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 498
    invoke-super {p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;->block:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
