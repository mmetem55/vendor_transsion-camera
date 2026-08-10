.class public interface abstract Lcom/squareup/wire/internal/JsonFormatter;
.super Ljava/lang/Object;
.source "JsonFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract fromString(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TW;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract toStringOrNumber(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
