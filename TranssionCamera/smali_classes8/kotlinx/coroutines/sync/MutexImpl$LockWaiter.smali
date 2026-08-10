.class abstract Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LockWaiter"
.end annotation


# static fields
.field private static final synthetic isTaken$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic isTaken:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final owner:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    const-class v1, Ljava/lang/Object;

    const-string v2, "isTaken"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->isTaken$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/sync/MutexImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 372
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 371
    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    .line 373
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->isTaken:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract completeResumeLockWaiter()V
.end method

.method public final dispose()V
    .locals 0

    .line 375
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    return-void
.end method

.method public final take()Z
    .locals 3

    .line 374
    sget-object v0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->isTaken$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract tryResumeLockWaiter()Z
.end method
