.class public abstract Lcom/squareup/wire/internal/FieldOrOneOfBinding;
.super Ljava/lang/Object;
.source "FieldOrOneOfBinding.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;

    invoke-direct {v0, p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;-><init>(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final omitIdentity(Lcom/squareup/wire/Syntax;)Z
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWriteIdentityValues()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    if-ne p1, v0, :cond_2

    return v3

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    if-ne p1, p0, :cond_3

    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    return-object p0
.end method

.method public abstract getDeclaredName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getKeyAdapter()Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLabel()Lcom/squareup/wire/WireField$Label;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRedacted()Z
.end method

.method public abstract getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTag()I
.end method

.method public abstract getWireFieldJsonName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getWriteIdentityValues()Z
.end method

.method public abstract isMap()Z
.end method

.method public abstract isMessage()Z
.end method

.method public final omitFromJson(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "syntax"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->omitIdentity(Lcom/squareup/wire/Syntax;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getIdentity()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract value(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
