.class public final Lcom/squareup/wire/internal/ReflectionKt;
.super Ljava/lang/Object;
.source "reflection.kt"


# direct methods
.method public static final createRuntimeMessageAdapter(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Z)Lcom/squareup/wire/internal/RuntimeMessageAdapter;
    .locals 16
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/Syntax;",
            "Z)",
            "Lcom/squareup/wire/internal/RuntimeMessageAdapter<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "messageType"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syntax"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/squareup/wire/internal/ReflectionKt;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 36
    new-instance v9, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;

    invoke-direct {v9, v8, v6}, Lcom/squareup/wire/internal/ReflectionKt$createRuntimeMessageAdapter$newBuilderInstance$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 44
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    const-string v0, "messageType.declaredFields"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v12, :cond_2

    aget-object v3, v11, v0

    add-int/lit8 v13, v0, 0x1

    .line 48
    const-class v0, Lcom/squareup/wire/WireField;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/squareup/wire/WireField;

    const-string v0, "messageField"

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/squareup/wire/internal/FieldBinding;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v2, p0

    move-object v4, v8

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/internal/FieldBinding;-><init>(Lcom/squareup/wire/WireField;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/squareup/wire/OneOf;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/squareup/wire/internal/ReflectionKt;->getKeys(Ljava/lang/reflect/Field;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/OneOf$Key;

    .line 53
    invoke-virtual {v1}, Lcom/squareup/wire/OneOf$Key;->getTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/squareup/wire/internal/OneOfBinding;

    move/from16 v5, p3

    invoke-direct {v4, v3, v8, v1, v5}, Lcom/squareup/wire/internal/OneOfBinding;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/squareup/wire/OneOf$Key;Z)V

    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_2
    move v0, v13

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    .line 59
    new-instance v11, Lcom/squareup/wire/internal/RuntimeMessageBinding;

    .line 60
    invoke-static/range {p0 .. p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 63
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    const-string v1, "unmodifiableMap(fields)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v11

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/squareup/wire/internal/RuntimeMessageBinding;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Class;Lkotlin/jvm/functions/Function0;Ljava/util/Map;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    .line 58
    invoke-direct {v0, v11}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;-><init>(Lcom/squareup/wire/internal/MessageBinding;)V

    return-object v0
.end method

.method public static final createRuntimeMessageAdapter(Ljava/lang/Class;Z)Lcom/squareup/wire/internal/RuntimeMessageAdapter;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;Z)",
            "Lcom/squareup/wire/internal/RuntimeMessageAdapter<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "messageType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->Companion:Lcom/squareup/wire/ProtoAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter$Companion;->get(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v0

    .line 84
    invoke-static {p0, v1, v0, p1}, Lcom/squareup/wire/internal/ReflectionKt;->createRuntimeMessageAdapter(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Z)Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createRuntimeMessageAdapter$default(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;ZILjava/lang/Object;)Lcom/squareup/wire/internal/RuntimeMessageAdapter;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 29
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/squareup/wire/internal/ReflectionKt;->createRuntimeMessageAdapter(Ljava/lang/Class;Ljava/lang/String;Lcom/squareup/wire/Syntax;Z)Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static final getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation

    .line 95
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "$Builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 95
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 98
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/Class;

    if-nez p0, :cond_1

    .line 95
    const-class p0, Lcom/squareup/wire/KotlinConstructorBuilder;

    :cond_1
    return-object p0
.end method

.method private static final getKeys(Ljava/lang/reflect/Field;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Set<",
            "Lcom/squareup/wire/OneOf$Key<",
            "*>;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "messageField.name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/squareup/wire/internal/Internal;->boxedOneOfKeysFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Set<com.squareup.wire.OneOf.Key<*>>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
