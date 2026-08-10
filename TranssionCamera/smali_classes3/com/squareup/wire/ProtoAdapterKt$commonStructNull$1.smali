.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapterKt;->commonStructNull()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 1

    const-string v0, "type.googleapis.com/google.protobuf.NullValue"

    .line 1142
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1142
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Void;
    .locals 1
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readVarint32()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1175
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "expected 0 but was "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Void;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Void;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1156
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Void;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Void;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "writer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1160
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public bridge synthetic encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Void;)V

    return-void
.end method

.method public encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Void;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getFieldEncoding$wire_runtime()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/ProtoWriter;->writeTag(ILcom/squareup/wire/FieldEncoding;)V

    .line 1165
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Void;)V

    return-void
.end method

.method public encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Void;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Void;)V

    .line 1170
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getFieldEncoding$wire_runtime()Lcom/squareup/wire/FieldEncoding;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/squareup/wire/ReverseProtoWriter;->writeTag(ILcom/squareup/wire/FieldEncoding;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1142
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encodedSize(Ljava/lang/Void;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Ljava/lang/Void;)I
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1148
    sget-object p0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic encodedSizeWithTag(ILjava/lang/Object;)I
    .locals 0

    .line 1142
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encodedSizeWithTag(ILjava/lang/Void;)I

    move-result p0

    return p0
.end method

.method public encodedSizeWithTag(ILjava/lang/Void;)I
    .locals 0
    .param p2    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1151
    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->encodedSize(Ljava/lang/Void;)I

    move-result p0

    .line 1152
    sget-object p2, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {p2, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->tagSize$wire_runtime(I)I

    move-result p1

    invoke-virtual {p2, p0}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1142
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->redact(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .param p1    # Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
