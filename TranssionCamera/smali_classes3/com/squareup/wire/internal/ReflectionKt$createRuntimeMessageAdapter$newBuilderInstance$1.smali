.class final Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "reflection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/ReflectionKt;->createRuntimeMessageAdapter(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Z)Lcom/squareup/wire/internal/RuntimeMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final synthetic $builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation
.end field

.field final synthetic $messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TB;>;",
            "Ljava/lang/Class<",
            "TM;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->$builderType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->$messageType:Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/squareup/wire/Message$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->$builderType:Ljava/lang/Class;

    const-class v1, Lcom/squareup/wire/KotlinConstructorBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/squareup/wire/KotlinConstructorBuilder;

    iget-object p0, p0, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->$messageType:Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/squareup/wire/KotlinConstructorBuilder;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->$builderType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "{\n      builderType.newInstance()\n    }"

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;->invoke()Lcom/squareup/wire/Message$Builder;

    move-result-object p0

    return-object p0
.end method
