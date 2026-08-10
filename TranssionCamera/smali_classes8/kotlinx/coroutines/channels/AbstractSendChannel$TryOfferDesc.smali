.class public final Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TryOfferDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
        "-TE;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1132:1\n1#2:1133\n*E\n"
.end annotation


# instance fields
.field public final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V
    .locals 0
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
            ")V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 371
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected failure(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 375
    instance-of p0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    instance-of p0, p1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-nez p0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPrepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 382
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 383
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->element:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-object p0

    .line 384
    :cond_0
    sget-object p1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    return-object p1

    .line 385
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
