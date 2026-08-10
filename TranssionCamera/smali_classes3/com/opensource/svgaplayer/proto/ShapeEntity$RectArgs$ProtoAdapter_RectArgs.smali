.class final Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$ProtoAdapter_RectArgs;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_RectArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 548
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    new-instance p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    invoke-direct {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;-><init>()V

    .line 574
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 575
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

    .line 583
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 584
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 585
    invoke-virtual {p0, v2, v3, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 581
    :cond_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->cornerRadius(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    goto :goto_0

    .line 580
    :cond_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->height(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    goto :goto_0

    .line 579
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->width(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    goto :goto_0

    .line 578
    :cond_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->y(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    goto :goto_0

    .line 577
    :cond_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->x(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    goto :goto_0

    .line 589
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 590
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

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

    .line 546
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$ProtoAdapter_RectArgs;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->x:Ljava/lang/Float;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 564
    :cond_0
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->y:Ljava/lang/Float;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 565
    :cond_1
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->width:Ljava/lang/Float;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 566
    :cond_2
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->height:Ljava/lang/Float;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 567
    :cond_3
    iget-object p0, p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->cornerRadius:Ljava/lang/Float;

    if-eqz p0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 568
    :cond_4
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

    .line 546
    check-cast p2, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$ProtoAdapter_RectArgs;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)V

    return-void
.end method

.method public encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)I
    .locals 4

    .line 553
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->x:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 554
    :goto_0
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->y:Ljava/lang/Float;

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

    .line 555
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->width:Ljava/lang/Float;

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

    .line 556
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->height:Ljava/lang/Float;

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

    .line 557
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->cornerRadius:Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :cond_4
    add-int/2addr p0, v0

    .line 558
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 546
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$ProtoAdapter_RectArgs;->encodedSize(Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)I

    move-result p0

    return p0
.end method

.method public redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;
    .locals 0

    .line 595
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->newBuilder()Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;

    move-result-object p0

    .line 596
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 597
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 546
    check-cast p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs$ProtoAdapter_RectArgs;->redact(Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    move-result-object p0

    return-object p0
.end method
