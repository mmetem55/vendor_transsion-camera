.class public abstract Lcom/squareup/wire/Message$Builder;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transient unknownFieldsBuffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient unknownFieldsByteString:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-void
.end method

.method private final prepareForNewUnknownFields()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    .line 151
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    .line 153
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 154
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->prepareForNewUnknownFields()V

    .line 118
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    .line 119
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->getUnknownFieldsWriter$wire_runtime()Lcom/squareup/wire/ProtoWriter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unknownFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->prepareForNewUnknownFields()V

    .line 108
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->getUnknownFieldsWriter$wire_runtime()Lcom/squareup/wire/ProtoWriter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    :cond_0
    return-object p0
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final buildUnknownFields()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    .line 140
    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-object p0
.end method

.method public final clearUnknownFields()Lcom/squareup/wire/Message$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 123
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lcom/squareup/wire/Message$Builder;->setUnknownFieldsByteString$wire_runtime(Lokio/ByteString;)V

    .line 124
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->getUnknownFieldsBuffer$wire_runtime()Lokio/Buffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->getUnknownFieldsBuffer$wire_runtime()Lokio/Buffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 126
    invoke-virtual {p0, v1}, Lcom/squareup/wire/Message$Builder;->setUnknownFieldsBuffer$wire_runtime(Lokio/Buffer;)V

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Lcom/squareup/wire/Message$Builder;->setUnknownFieldsWriter$wire_runtime(Lcom/squareup/wire/ProtoWriter;)V

    return-object p0
.end method

.method public final getUnknownFieldsBuffer$wire_runtime()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    return-object p0
.end method

.method public final getUnknownFieldsByteString$wire_runtime()Lokio/ByteString;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-object p0
.end method

.method public final getUnknownFieldsWriter$wire_runtime()Lcom/squareup/wire/ProtoWriter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    return-object p0
.end method

.method public final setUnknownFieldsBuffer$wire_runtime(Lokio/Buffer;)V
    .locals 0
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 102
    iput-object p1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    return-void
.end method

.method public final setUnknownFieldsByteString$wire_runtime(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-void
.end method

.method public final setUnknownFieldsWriter$wire_runtime(Lcom/squareup/wire/ProtoWriter;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 103
    iput-object p1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    return-void
.end method
