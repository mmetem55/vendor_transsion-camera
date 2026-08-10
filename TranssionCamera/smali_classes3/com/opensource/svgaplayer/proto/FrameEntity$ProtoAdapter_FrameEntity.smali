.class final Lcom/opensource/svgaplayer/proto/FrameEntity$ProtoAdapter_FrameEntity;
.super Lcom/squareup/wire/ProtoAdapter;
.source "FrameEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/FrameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_FrameEntity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/FrameEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 204
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/FrameEntity;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/FrameEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 241
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->shapes:Ljava/util/List;

    sget-object v3, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/proto/ShapeEntity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->clipPath(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    goto :goto_0

    .line 235
    :cond_2
    sget-object v2, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/proto/Transform;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->transform(Lcom/opensource/svgaplayer/proto/Transform;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    goto :goto_0

    .line 234
    :cond_3
    sget-object v2, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/proto/Layout;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->layout(Lcom/opensource/svgaplayer/proto/Layout;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    goto :goto_0

    .line 233
    :cond_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->alpha(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 246
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/FrameEntity;

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

    .line 202
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/FrameEntity$ProtoAdapter_FrameEntity;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/FrameEntity;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/FrameEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/FrameEntity;->alpha:Ljava/lang/Float;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 220
    :cond_0
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/FrameEntity;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 221
    :cond_1
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/FrameEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 222
    :cond_2
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/FrameEntity;->clipPath:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 223
    :cond_3
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    const/4 v0, 0x5

    iget-object v1, p2, Lcom/opensource/svgaplayer/proto/FrameEntity;->shapes:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 224
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

    .line 202
    check-cast p2, Lcom/opensource/svgaplayer/proto/FrameEntity;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/FrameEntity$ProtoAdapter_FrameEntity;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/FrameEntity;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/FrameEntity;)I
    .locals 4

    .line 209
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->alpha:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 210
    :goto_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr p0, v1

    .line 211
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/2addr p0, v1

    .line 212
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->clipPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :cond_3
    add-int/2addr p0, v0

    sget-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 213
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->shapes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 214
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 202
    check-cast p1, Lcom/opensource/svgaplayer/proto/FrameEntity;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/FrameEntity$ProtoAdapter_FrameEntity;->encodedSize(Lcom/opensource/svgaplayer/proto/FrameEntity;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/FrameEntity;)Lcom/opensource/svgaplayer/proto/FrameEntity;
    .locals 1

    .line 251
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/FrameEntity;->newBuilder()Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;

    move-result-object p0

    .line 252
    iget-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/proto/Layout;

    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/opensource/svgaplayer/proto/Transform;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/proto/Transform;

    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->shapes:Ljava/util/List;

    sget-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, v0}, Lcom/squareup/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)V

    .line 255
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 256
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/FrameEntity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 202
    check-cast p1, Lcom/opensource/svgaplayer/proto/FrameEntity;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/FrameEntity$ProtoAdapter_FrameEntity;->redact(Lcom/opensource/svgaplayer/proto/FrameEntity;)Lcom/opensource/svgaplayer/proto/FrameEntity;

    move-result-object p0

    return-object p0
.end method
