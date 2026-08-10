.class public abstract Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n106#1,7:243\n1#2:250\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n114#1:243,7\n*E\n"
.end annotation


# static fields
.field private static final synthetic _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _prev:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNextOrClosed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getLeftmostAliveNode()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final getNextOrClosed()Ljava/lang/Object;
    .locals 0

    .line 99
    iget-object p0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Ljava/lang/Object;

    return-object p0
.end method

.method private final getRightmostAliveNode()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final cleanPrev()V
    .locals 2

    .line 131
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 106
    invoke-static {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object p0

    .line 107
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    check-cast p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    return-object p0
.end method

.method public final getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 126
    iget-object p0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    return-object p0
.end method

.method public abstract getRemoved()Z
.end method

.method public final isTail()Z
    .locals 0

    .line 124
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final markAsClosed()Z
    .locals 3

    .line 136
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final nextOrIfClosed(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 106
    invoke-static {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object p0

    .line 107
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 110
    check-cast p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    return-object p0

    .line 108
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    .line 152
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 153
    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 156
    :cond_3
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getLeftmostAliveNode()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRightmostAliveNode()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    .line 159
    iput-object v0, v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 160
    iput-object v1, v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Ljava/lang/Object;

    .line 162
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 163
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 119
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
