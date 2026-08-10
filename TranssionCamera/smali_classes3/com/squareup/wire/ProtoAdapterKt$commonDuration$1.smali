.class public final Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProtoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ProtoAdapterKt;->commonDuration()Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 Duration.kt\ncom/squareup/wire/DurationKt\n*L\n1#1,1334:1\n415#2,7:1335\n22#3:1342\n*S KotlinDebug\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$commonDuration$1\n*L\n933#1:1335,7\n940#1:1342\n*E\n"
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Ljava/time/Duration;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const-string v0, "type.googleapis.com/google.protobuf.Duration"

    .line 901
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    return-void
.end method

.method private final getSameSignNanos(Ljava/time/Duration;)I
    .locals 4

    .line 964
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p0

    const p1, 0x3b9aca00

    sub-int/2addr p0, p1

    goto :goto_0

    .line 965
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getSameSignSeconds(Ljava/time/Duration;)J
    .locals 4

    .line 952
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 901
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/time/Duration;
    .locals 6
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    .line 417
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 421
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    int-to-long p0, p0

    .line 22
    invoke-static {v2, v3, p0, p1}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    const-string p1, "ofSeconds(seconds, nano)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 937
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 936
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    .line 935
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 901
    check-cast p2, Ljava/time/Duration;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->encode(Lcom/squareup/wire/ProtoWriter;Ljava/time/Duration;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/time/Duration;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignSeconds(Ljava/time/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 918
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 919
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignNanos(Ljava/time/Duration;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 920
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 901
    check-cast p2, Ljava/time/Duration;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/time/Duration;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/time/Duration;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignNanos(Ljava/time/Duration;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 926
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignSeconds(Ljava/time/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 927
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 901
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->encodedSize(Ljava/time/Duration;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Ljava/time/Duration;)I
    .locals 5
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-direct {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignSeconds(Ljava/time/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 910
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v3, v0

    .line 911
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->getSameSignNanos(Ljava/time/Duration;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 912
    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr v3, p0

    :cond_1
    return v3
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 901
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;->redact(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 0
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
