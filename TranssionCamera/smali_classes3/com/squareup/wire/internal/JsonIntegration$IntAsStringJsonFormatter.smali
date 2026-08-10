.class final Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;
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
    name = "IntAsStringJsonFormatter"
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
.field public static final INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;

    invoke-direct {v0}, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;-><init>()V

    sput-object v0, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;->fromString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;->toStringOrNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringOrNumber(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 225
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
