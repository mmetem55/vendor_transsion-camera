.class public final Lcom/squareup/wire/EnumAdapterKt;
.super Ljava/lang/Object;
.source "EnumAdapter.kt"


# direct methods
.method public static final commonDecode(Lcom/squareup/wire/EnumAdapter;Lcom/squareup/wire/ProtoReader;Lkotlin/jvm/functions/Function1;)Lcom/squareup/wire/WireEnum;
    .locals 1
    .param p0    # Lcom/squareup/wire/EnumAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(",
            "Lcom/squareup/wire/EnumAdapter<",
            "TE;>;",
            "Lcom/squareup/wire/ProtoReader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->readVarint32()I

    move-result p1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/wire/WireEnum;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;-><init>(ILkotlin/reflect/KClass;)V

    throw p2
.end method

.method public static final commonEncode(Lcom/squareup/wire/ProtoWriter;Lcom/squareup/wire/WireEnum;)V
    .locals 1
    .param p0    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/WireEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(",
            "Lcom/squareup/wire/ProtoWriter;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Lcom/squareup/wire/WireEnum;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public static final commonEncode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/squareup/wire/WireEnum;)V
    .locals 1
    .param p0    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/squareup/wire/WireEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "TE;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lcom/squareup/wire/WireEnum;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public static final commonEncodedSize(Lcom/squareup/wire/WireEnum;)I
    .locals 1
    .param p0    # Lcom/squareup/wire/WireEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(TE;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-interface {p0}, Lcom/squareup/wire/WireEnum;->getValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result p0

    return p0
.end method

.method public static final commonRedact(Lcom/squareup/wire/WireEnum;)Lcom/squareup/wire/WireEnum;
    .locals 1
    .param p0    # Lcom/squareup/wire/WireEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
