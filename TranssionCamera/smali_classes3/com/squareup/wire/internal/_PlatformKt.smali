.class public final Lcom/squareup/wire/internal/_PlatformKt;
.super Ljava/lang/Object;
.source "-Platform.kt"


# direct methods
.method public static final camelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 43
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const/16 p1, 0x7a

    if-gt v4, p1, :cond_1

    const/16 p1, 0x61

    if-gt p1, v4, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    add-int/lit8 v4, v4, -0x20

    .line 52
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic camelCase$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/squareup/wire/internal/_PlatformKt;->camelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toUnmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toUnmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "unmodifiableMap(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
