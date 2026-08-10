.class final Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;
.super Ljava/lang/Object;
.source "ConflatedBroadcastChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Closed"
.end annotation


# instance fields
.field public final closeCause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;->closeCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getSendException()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;->closeCause:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getValueException()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$Closed;->closeCause:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Channel was closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
