.class public final Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapterKt;->commonBytes()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lokio/ByteString;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 876
    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 876
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;->decode(Lcom/squareup/wire/ProtoReader;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lokio/ByteString;
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readBytes()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 876
    check-cast p2, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;->encode(Lcom/squareup/wire/ProtoWriter;Lokio/ByteString;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lokio/ByteString;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 876
    check-cast p2, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lokio/ByteString;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lokio/ByteString;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 876
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;->encodedSize(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lokio/ByteString;)I
    .locals 0
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 876
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;->redact(Lokio/ByteString;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lokio/ByteString;)Lokio/ByteString;
    .locals 0
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 898
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
