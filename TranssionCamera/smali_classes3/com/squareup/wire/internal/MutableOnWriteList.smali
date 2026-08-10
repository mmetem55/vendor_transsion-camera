.class public final Lcom/squareup/wire/internal/MutableOnWriteList;
.super Lkotlin/collections/AbstractMutableList;
.source "MutableOnWriteList.kt"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final immutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "immutableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getMutableList$wire_runtime()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->immutableList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setMutableList$wire_runtime(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/squareup/wire/internal/MutableOnWriteList;->mutableList:Ljava/util/List;

    return-void
.end method
