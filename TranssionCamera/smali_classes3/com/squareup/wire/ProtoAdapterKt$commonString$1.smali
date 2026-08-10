.class public final Lcom/squareup/wire/ProtoAdapterKt$commonString$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapterKt;->commonString()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 851
    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 851
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/String;
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

    .line 871
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 851
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/String;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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

    .line 862
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 851
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/String;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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

    .line 867
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ReverseProtoWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 851
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;->encodedSize(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 858
    invoke-static {p1, p0, p0, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 851
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
