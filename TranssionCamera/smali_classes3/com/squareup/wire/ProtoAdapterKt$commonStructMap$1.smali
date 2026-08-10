.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapterKt;->commonStructMap()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1334:1\n37#2:1335\n36#2,3:1336\n1#3:1339\n415#4,5:1340\n415#4,7:1345\n421#4:1352\n438#5:1353\n388#5:1354\n1236#6,4:1355\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonStructMap$1\n*L\n1069#1:1335\n1069#1:1336,3\n1080#1:1340,5\n1085#1:1345,7\n1080#1:1352\n1097#1:1353\n1097#1:1354\n1097#1:1355,4\n*E\n"
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Ljava/util/Map<",
            "**>;>;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "type.googleapis.com/google.protobuf.Struct"

    .line 1034
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1034
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/util/Map;
    .locals 10
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
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 415
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 421
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    return-object p0

    :cond_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 1081
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->skip()V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v7, v2

    .line 417
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 421
    invoke-virtual {p1, v5, v6}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    if-eqz v2, :cond_0

    .line 1092
    invoke-interface {p0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eq v8, v4, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 1089
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 1088
    :cond_4
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRUCT_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1087
    :cond_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1034
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/util/Map;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/util/Map;)V
    .locals 7
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1054
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 1055
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRUCT_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1056
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p1, v2, v6}, Lcom/squareup/wire/ProtoWriter;->writeTag(ILcom/squareup/wire/FieldEncoding;)V

    .line 1057
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoWriter;->writeVarint32(I)V

    .line 1058
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1059
    invoke-virtual {v4, p1, v5, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1034
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/util/Map;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/util/Map;)V
    .locals 6
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1069
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/util/Map$Entry;

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1069
    check-cast p0, [Ljava/util/Map$Entry;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->reverse([Ljava/lang/Object;)V

    array-length v0, p0

    :goto_0
    if-ge p2, v0, :cond_1

    aget-object v1, p0, p2

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1070
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->getByteCount()I

    move-result v3

    .line 1071
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRUCT_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1072
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1073
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->getByteCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint32(I)V

    .line 1074
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p1, v4, v1}, Lcom/squareup/wire/ReverseProtoWriter;->writeTag(ILcom/squareup/wire/FieldEncoding;)V

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

    .line 1034
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->encodedSize(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Ljava/util/Map;)I
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1044
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1045
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRUCT_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1046
    sget-object v0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoWriter$Companion;->tagSize$wire_runtime(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    goto :goto_0

    :cond_1
    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1034
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->redact(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 438
    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 388
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1237
    check-cast v0, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1097
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRUCT_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
