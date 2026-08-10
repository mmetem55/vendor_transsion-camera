.class public final Lcom/squareup/wire/FieldEncoding$Companion;
.super Ljava/lang/Object;
.source "FieldEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/FieldEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/FieldEncoding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get$wire_runtime(I)Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    .line 44
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Unexpected FieldEncoding: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    goto :goto_0

    .line 42
    :cond_2
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    goto :goto_0

    .line 41
    :cond_3
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    :goto_0
    return-object p0
.end method
