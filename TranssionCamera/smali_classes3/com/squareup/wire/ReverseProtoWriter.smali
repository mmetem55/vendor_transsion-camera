.class public final Lcom/squareup/wire/ReverseProtoWriter;
.super Ljava/lang/Object;
.source "ReverseProtoWriter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ReverseProtoWriter$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/squareup/wire/ReverseProtoWriter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private array:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private arrayLimit:I

.field private final cursor:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final forwardBuffer$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final forwardWriter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private head:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tail:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/ReverseProtoWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/ReverseProtoWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->Companion:Lcom/squareup/wire/ReverseProtoWriter$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 275
    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    .line 53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    .line 56
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    .line 57
    sget-object v0, Lcom/squareup/wire/ReverseProtoWriter;->EMPTY_ARRAY:[B

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    .line 61
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;->INSTANCE:Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->forwardBuffer$delegate:Lkotlin/Lazy;

    .line 62
    new-instance v1, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;

    invoke-direct {v1, p0}, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;-><init>(Lcom/squareup/wire/ReverseProtoWriter;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->forwardWriter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getForwardBuffer(Lcom/squareup/wire/ReverseProtoWriter;)Lokio/Buffer;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->getForwardBuffer()Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method private final emitCurrentSegment()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    sget-object v1, Lcom/squareup/wire/ReverseProtoWriter;->EMPTY_ARRAY:[B

    if-ne v0, v1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 90
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 93
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 94
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    .line 95
    iget-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    iput-object v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    .line 96
    iput-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    .line 99
    iput-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    return-void
.end method

.method private final getForwardBuffer()Lokio/Buffer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->forwardBuffer$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Buffer;

    return-object p0
.end method

.method private final getForwardWriter()Lcom/squareup/wire/ProtoWriter;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->forwardWriter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/ProtoWriter;

    return-object p0
.end method

.method private final require(I)V
    .locals 4

    .line 75
    iget v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    if-lt v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->emitCurrentSegment()V

    .line 77
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->head:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 78
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, p1}, Lokio/Buffer$UnsafeCursor;->expandBuffer(I)J

    .line 79
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    iget-wide v0, p1, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lokio/Buffer$UnsafeCursor;->end:I

    iget-object p1, p1, Lokio/Buffer$UnsafeCursor;->data:[B

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p1, p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    iget-object p1, p1, Lokio/Buffer$UnsafeCursor;->data:[B

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    .line 81
    iget-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->cursor:Lokio/Buffer$UnsafeCursor;

    iget p1, p1, Lokio/Buffer$UnsafeCursor;->end:I

    iput p1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    return-void

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getByteCount()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    array-length v1, v1

    iget p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeBytes(Lokio/ByteString;)V
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 117
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 118
    iget v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v0, v1

    .line 120
    iget-object v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    invoke-virtual {p1, v0, v3, v2, v1}, Lokio/ByteString;->copyInto(I[BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeFixed32(I)V
    .locals 3

    const/4 v0, 0x4

    .line 250
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 251
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    .line 253
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    add-int/lit8 v0, v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 254
    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 255
    aput-byte v2, p0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 256
    aput-byte p1, p0, v0

    return-void
.end method

.method public final writeFixed64(J)V
    .locals 7

    const/16 v0, 0x8

    .line 261
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 262
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    .line 264
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    add-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 265
    aput-byte v0, p0, v2

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x10

    ushr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 266
    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x18

    ushr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 267
    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x20

    ushr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 268
    aput-byte v2, p0, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x28

    ushr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 269
    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x30

    ushr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 270
    aput-byte v2, p0, v1

    const/16 v1, 0x38

    ushr-long/2addr p1, v1

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 271
    aput-byte p1, p0, v0

    return-void
.end method

.method public final writeForward$wire_runtime(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/squareup/wire/ProtoWriter;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->getForwardWriter()Lcom/squareup/wire/ProtoWriter;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->getForwardBuffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public final writeSignedVarint32$wire_runtime(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint32(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint64(J)V

    :goto_0
    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_a

    add-int/lit8 v2, v0, -0x1

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x80

    const/4 v4, -0x1

    if-ge v0, v3, :cond_2

    .line 134
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 135
    iget v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    .line 136
    iget-object v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    add-int/2addr v5, v4

    int-to-byte v0, v0

    .line 139
    aput-byte v0, v6, v5

    sub-int v0, v2, v5

    .line 143
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    if-le v2, v0, :cond_1

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, -0x1

    int-to-byte v4, v4

    .line 148
    aput-byte v4, v6, v5

    goto :goto_1

    .line 151
    :cond_1
    :goto_2
    iput v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    goto/16 :goto_6

    :cond_2
    const/16 v5, 0x800

    if-ge v0, v5, :cond_3

    const/4 v5, 0x2

    .line 156
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 158
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    iget v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    add-int/2addr v6, v4

    and-int/lit8 v7, v0, 0x3f

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/2addr v6, v4

    .line 159
    iput v6, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    shr-int/lit8 v0, v0, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    goto/16 :goto_6

    :cond_3
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v0, v5, :cond_9

    const v5, 0xdfff

    if-le v0, v5, :cond_4

    goto :goto_5

    :cond_4
    if-ltz v2, :cond_5

    .line 177
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_5
    const v5, 0x7fffffff

    :goto_3
    const v7, 0xdbff

    if-gt v5, v7, :cond_8

    const v7, 0xdc00

    const/4 v8, 0x0

    if-gt v7, v0, :cond_6

    const v7, 0xe000

    if-ge v0, v7, :cond_6

    move v8, v1

    :cond_6
    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, -0x1

    const/high16 v7, 0x10000

    and-int/lit16 v5, v5, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v5

    add-int/2addr v0, v7

    const/4 v5, 0x4

    .line 189
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 191
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    iget v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    add-int/2addr v7, v4

    and-int/lit8 v8, v0, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/2addr v7, v4

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    .line 192
    aput-byte v8, v5, v7

    add-int/2addr v7, v4

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v6, v8

    or-int/2addr v3, v6

    int-to-byte v3, v3

    .line 193
    aput-byte v3, v5, v7

    add-int/2addr v7, v4

    .line 194
    iput v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    shr-int/lit8 v0, v0, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    goto :goto_6

    .line 179
    :cond_8
    :goto_4
    invoke-direct {p0, v1}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 180
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    iget v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    aput-byte v6, v0, v3

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v5, 0x3

    .line 165
    invoke-direct {p0, v5}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 167
    iget-object v5, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    iget v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    add-int/2addr v7, v4

    and-int/lit8 v8, v0, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/2addr v7, v4

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v6, v8

    or-int/2addr v3, v6

    int-to-byte v3, v3

    .line 168
    aput-byte v3, v5, v7

    add-int/2addr v7, v4

    .line 169
    iput v7, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    shr-int/lit8 v0, v0, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, v5, v7

    :goto_6
    move v0, v2

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final writeTag(ILcom/squareup/wire/FieldEncoding;)V
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fieldEncoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/ProtoWriter$Companion;->makeTag$wire_runtime(ILcom/squareup/wire/FieldEncoding;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ReverseProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/squareup/wire/ReverseProtoWriter;->emitCurrentSegment()V

    .line 71
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->tail:Lokio/Buffer;

    invoke-interface {p1, p0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    return-void
.end method

.method public final writeVarint32(I)V
    .locals 4

    .line 222
    sget-object v0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoWriter$Companion;->varint32Size$wire_runtime(I)I

    move-result v0

    .line 223
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 224
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    move v1, v2

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return-void
.end method

.method public final writeVarint64(J)V
    .locals 7

    .line 236
    sget-object v0, Lcom/squareup/wire/ProtoWriter;->Companion:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/ProtoWriter$Companion;->varint64Size$wire_runtime(J)I

    move-result v0

    .line 237
    invoke-direct {p0, v0}, Lcom/squareup/wire/ReverseProtoWriter;->require(I)V

    .line 238
    iget v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/ReverseProtoWriter;->arrayLimit:I

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    add-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0x7f

    and-long/2addr v3, p1

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    move v1, v2

    goto :goto_0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->array:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    return-void
.end method
