.class public final Lcom/squareup/wire/ProtoWriter$Companion;
.super Ljava/lang/Object;
.source "ProtoWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/ProtoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/ProtoWriter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeZigZag32$wire_runtime(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p0, p1

    return p0
.end method

.method public final decodeZigZag64$wire_runtime(J)J
    .locals 4

    const/4 p0, 0x1

    ushr-long v0, p1, p0

    const-wide/16 v2, 0x1

    and-long p0, p1, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final encodeZigZag32$wire_runtime(I)I
    .locals 0

    shl-int/lit8 p0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p0, p1

    return p0
.end method

.method public final encodeZigZag64$wire_runtime(J)J
    .locals 2

    const/4 p0, 0x1

    shl-long v0, p1, p0

    const/16 p0, 0x3f

    shr-long p0, p1, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public final int32Size$wire_runtime(I)I
    .locals 0

    if-ltz p1, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    return p0
.end method

.method public final makeTag$wire_runtime(ILcom/squareup/wire/FieldEncoding;)I
    .locals 0
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fieldEncoding"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    shl-int/lit8 p0, p1, 0x3

    .line 130
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->getValue$wire_runtime()I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public final tagSize$wire_runtime(I)I
    .locals 1

    .line 134
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/wire/ProtoWriter$Companion;->makeTag$wire_runtime(ILcom/squareup/wire/FieldEncoding;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result p0

    return p0
.end method

.method public final varint32Size$wire_runtime(I)I
    .locals 0

    and-int/lit8 p0, p1, -0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 p0, p1, -0x4000

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 p0, -0x200000

    and-int/2addr p0, p1

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 p0, -0x10000000

    and-int/2addr p0, p1

    if-nez p0, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public final varint64Size$wire_runtime(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p1

    cmp-long p0, v0, v2

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    goto :goto_0

    :cond_8
    const/16 p0, 0xa

    :goto_0
    return p0
.end method
