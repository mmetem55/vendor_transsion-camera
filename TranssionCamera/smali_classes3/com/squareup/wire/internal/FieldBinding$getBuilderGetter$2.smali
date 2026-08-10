.class final Lcom/squareup/wire/internal/FieldBinding$getBuilderGetter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FieldBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/FieldBinding;->getBuilderGetter(Ljava/lang/Class;Lcom/squareup/wire/WireField;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TB;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/wire/internal/FieldBinding$getBuilderGetter$2;->$field:Ljava/lang/reflect/Field;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/Message$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/squareup/wire/internal/FieldBinding$getBuilderGetter$2;->$field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/FieldBinding$getBuilderGetter$2;->invoke(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
