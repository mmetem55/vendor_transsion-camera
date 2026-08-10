.class final Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrepareOp"
.end annotation


# instance fields
.field private final atomicOp:Lkotlinx/coroutines/internal/AtomicOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/internal/AtomicOp;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;)V"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->this$0:Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->atomicOp:Lkotlinx/coroutines/internal/AtomicOp;

    return-void
.end method


# virtual methods
.method public getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 291
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->atomicOp:Lkotlinx/coroutines/internal/AtomicOp;

    return-object p0
.end method

.method public perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 293
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/AtomicOp;->isDecided()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->getAtomicOp()Lkotlinx/coroutines/internal/AtomicOp;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 294
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
