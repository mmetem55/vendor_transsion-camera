.class final Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;
.super Ljava/lang/Object;
.source "JsonIntegration.kt"

# interfaces
.implements Lcom/squareup/wire/internal/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/internal/JsonIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsignedLongAsNumberJsonFormatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/JsonFormatter<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final maxLong:Ljava/math/BigInteger;

.field private static final power64:Ljava/math/BigInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;

    invoke-direct {v0}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;

    .line 141
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "18446744073709551616"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->power64:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 142
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->maxLong:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :try_start_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    .line 151
    :goto_0
    sget-object p1, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->maxLong:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->power64:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->fromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public toStringOrNumber(J)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    .line 158
    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->power64:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    const-string p1, "when {\n        value < 0\u2026    else -> value\n      }"

    .line 157
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 139
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->toStringOrNumber(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
