.class public final Lcom/squareup/wire/KotlinConstructorBuilderKt;
.super Ljava/lang/Object;
.source "KotlinConstructorBuilder.kt"


# direct methods
.method public static final synthetic access$isMap(Lcom/squareup/wire/WireField;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/squareup/wire/KotlinConstructorBuilderKt;->isMap(Lcom/squareup/wire/WireField;)Z

    move-result p0

    return p0
.end method

.method private static final isMap(Lcom/squareup/wire/WireField;)Z
    .locals 0

    .line 130
    invoke-interface {p0}, Lcom/squareup/wire/WireField;->keyAdapter()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
