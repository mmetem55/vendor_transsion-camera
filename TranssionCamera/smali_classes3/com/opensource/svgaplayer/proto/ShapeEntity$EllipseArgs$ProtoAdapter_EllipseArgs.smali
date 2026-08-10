.class final Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$ProtoAdapter_EllipseArgs;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_EllipseArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 762
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    new-instance p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;-><init>()V

    .line 786
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 787
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 794
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 795
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 796
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 792
    :cond_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->radiusY(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    goto :goto_0

    .line 791
    :cond_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->radiusX(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    goto :goto_0

    .line 790
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->y(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    goto :goto_0

    .line 789
    :cond_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->x(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    goto :goto_0

    .line 800
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 801
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

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

    .line 760
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$ProtoAdapter_EllipseArgs;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->x:Ljava/lang/Float;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 777
    :cond_0
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->y:Ljava/lang/Float;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 778
    :cond_1
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusX:Ljava/lang/Float;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 779
    :cond_2
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusY:Ljava/lang/Float;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 780
    :cond_3
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

    .line 760
    check-cast p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$ProtoAdapter_EllipseArgs;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)I
    .locals 4

    .line 767
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->x:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 768
    :goto_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->y:Ljava/lang/Float;

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

    .line 769
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusX:Ljava/lang/Float;

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

    .line 770
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusY:Ljava/lang/Float;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :cond_3
    add-int/2addr p0, v0

    .line 771
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 760
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$ProtoAdapter_EllipseArgs;->encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;
    .locals 0

    .line 806
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->newBuilder()Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;

    move-result-object p0

    .line 807
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 808
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 760
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs$ProtoAdapter_EllipseArgs;->redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    move-result-object p0

    return-object p0
.end method
