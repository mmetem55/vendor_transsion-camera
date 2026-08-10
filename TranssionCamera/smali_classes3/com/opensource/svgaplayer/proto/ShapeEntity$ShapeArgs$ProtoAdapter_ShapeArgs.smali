.class final Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$ProtoAdapter_ShapeArgs;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ShapeArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 344
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    new-instance p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 363
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 369
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 365
    :cond_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->d(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 374
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$ProtoAdapter_ShapeArgs;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    check-cast p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$ProtoAdapter_ShapeArgs;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)I
    .locals 2

    .line 349
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 350
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 342
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$ProtoAdapter_ShapeArgs;->encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;
    .locals 0

    .line 379
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->newBuilder()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 381
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 342
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$ProtoAdapter_ShapeArgs;->redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    move-result-object p0

    return-object p0
.end method
