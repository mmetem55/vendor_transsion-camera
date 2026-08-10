.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Mutex;
.implements Lkotlinx/coroutines/selects/SelectClause2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;,
        Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;,
        Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;,
        Lkotlinx/coroutines/sync/MutexImpl$LockCont;,
        Lkotlinx/coroutines/sync/MutexImpl$LockSelect;,
        Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,425:1\n155#2,2:426\n155#2,2:428\n155#2,2:434\n155#2,2:438\n155#2,2:440\n1#3:430\n332#4,3:431\n335#4,2:436\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n147#1:426,2\n164#1:428,2\n192#1:434,2\n323#1:438,2\n354#1:440,2\n190#1:431,3\n190#1:436,2\n*E\n"
.end annotation


# static fields
.field static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/MutexImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 144
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$lockSuspend(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 333
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    .line 191
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 435
    :cond_0
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 194
    instance-of v3, v2, Lkotlinx/coroutines/sync/Empty;

    if-eqz v3, :cond_3

    .line 195
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v3, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 196
    sget-object v4, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v5, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v3, v3, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 199
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v3, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 200
    :goto_1
    sget-object v4, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    .line 207
    :cond_3
    instance-of v3, v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v3, :cond_a

    .line 208
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v4, v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v4, p1, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_9

    .line 211
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 220
    iget-object v3, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    if-eq v3, v2, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->take()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 226
    :cond_5
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    goto :goto_0

    .line 222
    :cond_6
    :goto_3
    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->removeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 335
    :goto_4
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 332
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_7

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 336
    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_8

    return-object p0

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    const-string p0, "Already locked by "

    .line 209
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_a
    instance-of v3, v2, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v3, :cond_b

    check-cast v2, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const-string p0, "Illegal state "

    .line 230
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOnLock()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public holdsLock(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 314
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 316
    instance-of v0, p0, Lkotlinx/coroutines/sync/Empty;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/sync/Empty;

    iget-object p0, p0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 317
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public isLocked()Z
    .locals 3

    .line 427
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 149
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object p0, v0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 150
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    return v2

    .line 151
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p0, "Illegal state "

    .line 152
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isLockedEmptyQueueState$kotlinx_coroutines_core()Z
    .locals 1

    .line 159
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 160
    instance-of v0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->tryLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 187
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1    # Lkotlinx/coroutines/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/sync/Mutex;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 242
    :cond_0
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 244
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    if-eqz v1, :cond_7

    .line 245
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v2, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 246
    sget-object v2, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_2
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 252
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 255
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 256
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCK_FAIL$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 257
    :cond_5
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    const-string p0, "performAtomicTrySelect(TryLockDesc) returned "

    .line 258
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_b

    .line 263
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v2, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq v2, p2, :cond_8

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 264
    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;

    invoke-direct {v2, p0, p2, p1, p3}, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 273
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 274
    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    if-eq v1, v0, :cond_9

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->take()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :cond_9
    invoke-interface {p1, v2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    return-void

    :cond_a
    const-string p0, "Already locked by "

    .line 263
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    const-string p0, "Illegal state "

    .line 281
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 441
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 356
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_1
    instance-of p0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Illegal state "

    .line 359
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 166
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 167
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v1, v4, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 168
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_LOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 171
    :goto_1
    sget-object v3, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 173
    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_6

    .line 174
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object p0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-eq p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    return v3

    :cond_5
    const-string p0, "Already locked by "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string p0, "Illegal state "

    .line 178
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 439
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->_state:Ljava/lang/Object;

    .line 325
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    if-nez p1, :cond_3

    .line 327
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getUNLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mutex is not locked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v6, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    if-ne v6, p1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    .line 330
    :goto_3
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getEMPTY_UNLOCKED$p()Lkotlinx/coroutines/sync/Empty;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lkotlinx/coroutines/sync/Empty;->locked:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_a

    .line 335
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v6, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    if-ne v6, p1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_a
    :goto_5
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeFirstOrNull()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_b

    .line 338
    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V

    .line 339
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_b
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->tryResumeLockWaiter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object p0, v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    if-nez p0, :cond_c

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getLOCKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    :cond_c
    iput-object p0, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->owner:Ljava/lang/Object;

    .line 343
    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->completeResumeLockWaiter()V

    return-void

    :cond_d
    const-string p0, "Illegal state "

    .line 348
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
