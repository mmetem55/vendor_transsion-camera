.class public final Lcom/squareup/wire/MapProtoAdapter;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/util/Map<",
        "TK;+TV;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/MapProtoAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1334:1\n37#2:1335\n36#2,3:1336\n1#3:1339\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/MapProtoAdapter\n*L\n484#1:1335\n484#1:1336,3\n*E\n"
.end annotation


# instance fields
.field private final entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/MapEntryProtoAdapter<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V
    .locals 7
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TK;>;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "keyAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    sget-object v2, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 447
    invoke-virtual {p2}, Lcom/squareup/wire/ProtoAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v5

    .line 448
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    .line 443
    invoke-direct/range {v1 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    .line 450
    new-instance v0, Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-direct {v0, p1, p2}, Lcom/squareup/wire/MapEntryProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V

    iput-object v0, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lcom/squareup/wire/MapProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/util/Map;
    .locals 7
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/MapEntryProtoAdapter;->getKeyAdapter$wire_runtime()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->getIdentity()Ljava/lang/Object;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/MapEntryProtoAdapter;->getValueAdapter$wire_runtime()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->getIdentity()Ljava/lang/Object;

    move-result-object v1

    .line 494
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    .line 496
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    .line 504
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    move p1, v6

    goto :goto_1

    :cond_0
    move p1, p0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v6, p0

    :goto_2
    if-eqz v6, :cond_2

    .line 508
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 507
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Map entry with null value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 506
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Map entry with null key"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eq v4, v6, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/MapEntryProtoAdapter;->getValueAdapter$wire_runtime()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 499
    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/MapEntryProtoAdapter;->getKeyAdapter$wire_runtime()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/MapProtoAdapter;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/util/Map;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Repeated values can only be encoded with a tag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/MapProtoAdapter;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/util/Map;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Repeated values can only be encoded with a tag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/MapProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/util/Map;)V

    return-void
.end method

.method public encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/util/Map;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "I",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 477
    iget-object v1, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/MapProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/util/Map;)V

    return-void
.end method

.method public encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/util/Map;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "I",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 484
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 38
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 484
    check-cast p3, [Ljava/util/Map$Entry;

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->reverse([Ljava/lang/Object;)V

    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    .line 485
    iget-object v3, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v3, p1, p2, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 440
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/MapProtoAdapter;->encodedSize(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Ljava/util/Map;)I
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)I"
        }
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Repeated values can only be sized with a tag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic encodedSizeWithTag(ILjava/lang/Object;)I
    .locals 0

    .line 440
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/MapProtoAdapter;->encodedSizeWithTag(ILjava/util/Map;)I

    move-result p0

    return p0
.end method

.method public encodedSizeWithTag(ILjava/util/Map;)I
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TK;+TV;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 459
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 460
    iget-object v2, p0, Lcom/squareup/wire/MapProtoAdapter;->entryAdapter:Lcom/squareup/wire/MapEntryProtoAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/MapProtoAdapter;->redact(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
