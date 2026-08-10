.class final Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;
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
    name = "UnsignedIntAsNumberJsonFormatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/JsonFormatter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final maxInt:J = 0x7fffffffL

.field private static final power32:J = 0x100000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;

    invoke-direct {v0}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-long p0, p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x100000000L

    sub-long/2addr p0, v0

    :cond_0
    long-to-int p0, p0

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;->fromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public toStringOrNumber(I)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-gez p1, :cond_0

    int-to-long p0, p1

    const-wide v0, 0x100000000L

    add-long/2addr p0, v0

    .line 201
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;->toStringOrNumber(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
