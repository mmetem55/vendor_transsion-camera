.class public final Lcom/squareup/wire/KotlinConstructorBuilder;
.super Lcom/squareup/wire/Message$Builder;
.source "KotlinConstructorBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinConstructorBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinConstructorBuilder.kt\ncom/squareup/wire/KotlinConstructorBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1547#2:132\n1618#2,3:133\n764#2:136\n855#2,2:137\n1849#2,2:139\n1102#3,2:141\n11418#3:143\n11529#3,4:144\n11646#3,9:152\n13536#3:161\n13537#3:164\n11655#3:165\n37#4:148\n36#4,3:149\n1#5:162\n1#5:163\n*S KotlinDebug\n*F\n+ 1 KotlinConstructorBuilder.kt\ncom/squareup/wire/KotlinConstructorBuilder\n*L\n56#1:132\n56#1:133,3\n57#1:136\n57#1:137,2\n58#1:139,2\n101#1:141,2\n104#1:143\n104#1:144,4\n116#1:152,9\n116#1:161\n116#1:164\n116#1:165\n112#1:148\n112#1:149,3\n116#1:163\n*E\n"
.end annotation


# instance fields
.field private final fieldValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/squareup/wire/WireField;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mapFieldKeyValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/squareup/wire/WireField;",
            "Ljava/util/Map<",
            "**>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repeatedFieldValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Lcom/squareup/wire/WireField;",
            "Ljava/util/List<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->messageType:Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length p1, p1

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->fieldValueMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->repeatedFieldValueMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->mapFieldKeyValueMap:Ljava/util/Map;

    return-void
.end method

.method private final clobberOtherIsOneOfs(Lcom/squareup/wire/WireField;)V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->fieldValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lkotlin/Pair;

    .line 56
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/WireField;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/squareup/wire/WireField;

    .line 57
    invoke-interface {v3}, Lcom/squareup/wire/WireField;->oneofName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->oneofName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/squareup/wire/WireField;->tag()I

    move-result v3

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1849
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/WireField;

    .line 59
    iget-object v1, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->fieldValueMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/squareup/wire/WireField;->tag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method private final declaredProtoFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Ljava/util/List<",
            "Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const-string p1, "declaredFields"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11646
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13536
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    .line 117
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const-string v4, "field.declaredAnnotations"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Lcom/squareup/wire/WireField;

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->filterIsInstance([Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/WireField;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 119
    :cond_0
    new-instance v4, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "field.type"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2, v3}, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;-><init>(Ljava/lang/Class;Lcom/squareup/wire/WireField;)V

    move-object v2, v4

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    .line 11654
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public build()Lcom/squareup/wire/Message;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->messageType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/squareup/wire/KotlinConstructorBuilder;->declaredProtoFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 90
    new-instance v1, Lkotlin/collections/ArrayDeque;

    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 91
    new-instance v2, Lkotlin/collections/ArrayDeque;

    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;

    .line 93
    invoke-virtual {v4}, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->getWireField()Lcom/squareup/wire/WireField;

    move-result-object v5

    invoke-interface {v5}, Lcom/squareup/wire/WireField;->label()Lcom/squareup/wire/WireField$Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->getWireField()Lcom/squareup/wire/WireField;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/wire/KotlinConstructorBuilderKt;->access$isMap(Lcom/squareup/wire/WireField;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->messageType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "messageType.constructors"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :cond_3
    if-ge v6, v4, :cond_b

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 102
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    move v10, v5

    :goto_2
    if-eqz v10, :cond_3

    .line 104
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v3

    const-string v4, "constructor.parameters"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11418
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11530
    array-length v6, v3

    move v8, v5

    move v9, v8

    :goto_3
    if-ge v8, v6, :cond_8

    aget-object v10, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v9, 0x1

    .line 106
    invoke-virtual {v10}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/util/List;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v10}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v12, Ljava/util/Map;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    .line 108
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_6

    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    goto :goto_5

    .line 109
    :cond_6
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;

    invoke-virtual {v9}, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->getWireField()Lcom/squareup/wire/WireField;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/squareup/wire/KotlinConstructorBuilder;->get(Lcom/squareup/wire/WireField;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    .line 107
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;

    invoke-virtual {v9}, Lcom/squareup/wire/KotlinConstructorBuilder$ProtoField;->getWireField()Lcom/squareup/wire/WireField;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/squareup/wire/KotlinConstructorBuilder;->get(Lcom/squareup/wire/WireField;)Ljava/lang/Object;

    move-result-object v9

    .line 105
    :goto_5
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v9, v11

    goto :goto_3

    :cond_8
    new-array p0, v5, [Ljava/lang/Object;

    .line 38
    invoke-interface {v4, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 112
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    check-cast p0, Lcom/squareup/wire/Message;

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type M of com.squareup.wire.KotlinConstructorBuilder"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1103
    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final get(Lcom/squareup/wire/WireField;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/squareup/wire/WireField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lcom/squareup/wire/KotlinConstructorBuilderKt;->access$isMap(Lcom/squareup/wire/WireField;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 65
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->mapFieldKeyValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    :goto_0
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 66
    :cond_1
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->label()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->repeatedFieldValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v1, p0

    :goto_1
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->fieldValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final set(Lcom/squareup/wire/WireField;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/squareup/wire/WireField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/squareup/wire/KotlinConstructorBuilderKt;->access$isMap(Lcom/squareup/wire/WireField;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->mapFieldKeyValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableMap<*, *>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->label()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    iget-object p0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->repeatedFieldValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.MutableList<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/squareup/wire/KotlinConstructorBuilder;->fieldValueMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->tag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 47
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->label()Lcom/squareup/wire/WireField$Label;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/wire/WireField$Label;->isOneOf()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 48
    invoke-direct {p0, p1}, Lcom/squareup/wire/KotlinConstructorBuilder;->clobberOtherIsOneOfs(Lcom/squareup/wire/WireField;)V

    :cond_4
    :goto_0
    return-void
.end method
