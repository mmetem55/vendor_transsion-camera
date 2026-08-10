.class final Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;
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
    name = "ByteStringJsonFormatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/JsonFormatter<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;

    invoke-direct {v0}, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;->fromString(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public fromString(Ljava/lang/String;)Lokio/ByteString;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object p0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {p0, p1}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 229
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;->toStringOrNumber(Lokio/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringOrNumber(Lokio/ByteString;)Ljava/lang/String;
    .locals 0
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
