.class final Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Transform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/Transform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 196
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/Transform;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/Transform;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/Transform$Builder;-><init>()V

    .line 224
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 225
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 234
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 232
    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->ty(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 231
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->tx(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 230
    :pswitch_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->d(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 229
    :pswitch_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->c(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->b(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 227
    :pswitch_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->a(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 241
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->build()Lcom/opensource/svgaplayer/proto/Transform;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/Transform;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/Transform;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 213
    :cond_0
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 214
    :cond_1
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 215
    :cond_2
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 216
    :cond_3
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-eqz p0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 217
    :cond_4
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 218
    :cond_5
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

    .line 194
    check-cast p2, Lcom/opensource/svgaplayer/proto/Transform;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/Transform;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/Transform;)I
    .locals 4

    .line 201
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 202
    :goto_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr p0, v1

    .line 203
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/2addr p0, v1

    .line 204
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    add-int/2addr p0, v1

    .line 205
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    add-int/2addr p0, v1

    .line 206
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :cond_5
    add-int/2addr p0, v0

    .line 207
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 194
    check-cast p1, Lcom/opensource/svgaplayer/proto/Transform;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;->encodedSize(Lcom/opensource/svgaplayer/proto/Transform;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/Transform;)Lcom/opensource/svgaplayer/proto/Transform;
    .locals 0

    .line 246
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/Transform;->newBuilder()Lcom/opensource/svgaplayer/proto/Transform$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 248
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->build()Lcom/opensource/svgaplayer/proto/Transform;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, Lcom/opensource/svgaplayer/proto/Transform;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/Transform$ProtoAdapter_Transform;->redact(Lcom/opensource/svgaplayer/proto/Transform;)Lcom/opensource/svgaplayer/proto/Transform;

    move-result-object p0

    return-object p0
.end method
