.class public final Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "AnyMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AnyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/squareup/wire/AnyMessage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,127:1\n415#2,7:128\n*S KotlinDebug\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n*L\n111#1:128,7\n*E\n"
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/squareup/wire/AnyMessage;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "type.googleapis.com/google.protobuf.Any"

    .line 88
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/squareup/wire/AnyMessage;
    .locals 5
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 415
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-string v2, ""

    .line 417
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 421
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    .line 118
    new-instance p1, Lcom/squareup/wire/AnyMessage;

    check-cast v2, Ljava/lang/String;

    check-cast p0, Lokio/ByteString;

    invoke-direct {p1, v2, p0}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object p1

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 115
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 114
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/squareup/wire/AnyMessage;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/squareup/wire/AnyMessage;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 100
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/squareup/wire/AnyMessage;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/squareup/wire/AnyMessage;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 105
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/squareup/wire/AnyMessage;)V

    return-void
.end method

.method public encodedSize(Lcom/squareup/wire/AnyMessage;)I
    .locals 2
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    .line 96
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 88
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->encodedSize(Lcom/squareup/wire/AnyMessage;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;
    .locals 1
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance p0, Lcom/squareup/wire/AnyMessage;

    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const-string v0, "square.github.io/wire/redacted"

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->redact(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;

    move-result-object p0

    return-object p0
.end method
