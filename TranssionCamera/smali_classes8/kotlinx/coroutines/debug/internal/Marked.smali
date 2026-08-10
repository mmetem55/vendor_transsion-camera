.class final Lkotlinx/coroutines/debug/internal/Marked;
.super Ljava/lang/Object;
.source "ConcurrentWeakMap.kt"


# instance fields
.field public final ref:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    return-void
.end method
