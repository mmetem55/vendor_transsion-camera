.class public final Lcom/squareup/wire/internal/InstantJsonFormatter;
.super Ljava/lang/Object;
.source "InstantJsonFormatter.kt"

# interfaces
.implements Lcom/squareup/wire/internal/JsonFormatter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/JsonFormatter<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/internal/InstantJsonFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/internal/InstantJsonFormatter;

    invoke-direct {v0}, Lcom/squareup/wire/internal/InstantJsonFormatter;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/InstantJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/InstantJsonFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/InstantJsonFormatter;->fromString(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/Instant;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    const-string p1, "from(parsed)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/InstantJsonFormatter;->toStringOrNumber(Ljava/time/Instant;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toStringOrNumber(Ljava/time/Instant;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ISO_INSTANT.format(value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
