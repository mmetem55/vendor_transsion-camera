.class final Lcom/squareup/wire/internal/RuntimeMessageBinding;
.super Ljava/lang/Object;
.source "reflection.kt"

# interfaces
.implements Lcom/squareup/wire/internal/MessageBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/MessageBinding<",
        "TM;TB;>;"
    }
.end annotation


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final createBuilder:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messageType:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final syntax:Lcom/squareup/wire/Syntax;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TB;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TB;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->messageType:Lkotlin/reflect/KClass;

    .line 103
    iput-object p2, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->builderType:Ljava/lang/Class;

    .line 104
    iput-object p3, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->createBuilder:Lkotlin/jvm/functions/Function0;

    .line 105
    iput-object p4, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->fields:Ljava/util/Map;

    .line 106
    iput-object p5, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->typeUrl:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->syntax:Lcom/squareup/wire/Syntax;

    return-void
.end method


# virtual methods
.method public addUnknownField(Lcom/squareup/wire/Message$Builder;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/Message$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fieldEncoding"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2, p3, p4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    return-void
.end method

.method public bridge synthetic addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->addUnknownField(Lcom/squareup/wire/Message$Builder;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public build(Lcom/squareup/wire/Message$Builder;)Lcom/squareup/wire/Message;
    .locals 0
    .param p1    # Lcom/squareup/wire/Message$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->build(Lcom/squareup/wire/Message$Builder;)Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public clearUnknownFields(Lcom/squareup/wire/Message$Builder;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/Message$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    return-void
.end method

.method public bridge synthetic clearUnknownFields(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->clearUnknownFields(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method public getCachedSerializedSize(Lcom/squareup/wire/Message;)I
    .locals 0
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getCachedSerializedSize$wire_runtime()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getCachedSerializedSize(Ljava/lang/Object;)I
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->getCachedSerializedSize(Lcom/squareup/wire/Message;)I

    move-result p0

    return p0
.end method

.method public getFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->fields:Ljava/util/Map;

    return-object p0
.end method

.method public getMessageType()Lkotlin/reflect/KClass;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->messageType:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public getSyntax()Lcom/squareup/wire/Syntax;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->syntax:Lcom/squareup/wire/Syntax;

    return-object p0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->typeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageBinding;->createBuilder:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Message$Builder;

    return-object p0
.end method

.method public bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->newBuilder()Lcom/squareup/wire/Message$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setCachedSerializedSize(Lcom/squareup/wire/Message;I)V
    .locals 0
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)V"
        }
    .end annotation

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->setCachedSerializedSize$wire_runtime(I)V

    return-void
.end method

.method public bridge synthetic setCachedSerializedSize(Ljava/lang/Object;I)V
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->setCachedSerializedSize(Lcom/squareup/wire/Message;I)V

    return-void
.end method

.method public unknownFields(Lcom/squareup/wire/Message;)Lokio/ByteString;
    .locals 0
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic unknownFields(Ljava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 101
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/RuntimeMessageBinding;->unknownFields(Lcom/squareup/wire/Message;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method
