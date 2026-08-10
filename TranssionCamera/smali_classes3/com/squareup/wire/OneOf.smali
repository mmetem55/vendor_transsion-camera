.class public final Lcom/squareup/wire/OneOf;
.super Ljava/lang/Object;
.source "OneOf.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/OneOf$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/squareup/wire/OneOf$Key<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Lcom/squareup/wire/OneOf$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/OneOf$Key;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/OneOf$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    .line 108
    iput-object p2, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/squareup/wire/OneOf;Lcom/squareup/wire/OneOf$Key;Ljava/lang/Object;ILjava/lang/Object;)Lcom/squareup/wire/OneOf;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/OneOf;->copy(Lcom/squareup/wire/OneOf$Key;Ljava/lang/Object;)Lcom/squareup/wire/OneOf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/squareup/wire/OneOf$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Lcom/squareup/wire/OneOf$Key;Ljava/lang/Object;)Lcom/squareup/wire/OneOf;
    .locals 0
    .param p1    # Lcom/squareup/wire/OneOf$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)",
            "Lcom/squareup/wire/OneOf<",
            "TK;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/squareup/wire/OneOf;

    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/OneOf;-><init>(Lcom/squareup/wire/OneOf$Key;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final encodeWithTag(Lcom/squareup/wire/ProtoWriter;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v0}, Lcom/squareup/wire/OneOf$Key;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v1}, Lcom/squareup/wire/OneOf$Key;->getTag()I

    move-result v1

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;)V
    .locals 2
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v0}, Lcom/squareup/wire/OneOf$Key;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v1}, Lcom/squareup/wire/OneOf$Key;->getTag()I

    move-result v1

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final encodedSizeWithTag()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v0}, Lcom/squareup/wire/OneOf$Key;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v1}, Lcom/squareup/wire/OneOf$Key;->getTag()I

    move-result v1

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/squareup/wire/OneOf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/squareup/wire/OneOf;

    iget-object v1, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    iget-object v3, p1, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getKey()Lcom/squareup/wire/OneOf$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    return-object p0
.end method

.method public final getOrNull(Lcom/squareup/wire/OneOf$Key;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/OneOf$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/OneOf$Key<",
            "TX;>;)TX;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {v0}, Lcom/squareup/wire/OneOf$Key;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/OneOf;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/squareup/wire/OneOf;->key:Lcom/squareup/wire/OneOf$Key;

    invoke-virtual {p0}, Lcom/squareup/wire/OneOf$Key;->getDeclaredName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
