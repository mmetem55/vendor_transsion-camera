.class public abstract Lcom/squareup/wire/internal/JsonIntegration;
.super Ljava/lang/Object;
.source "JsonIntegration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsStringJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$LongAsStringJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsStringJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;,
        Lcom/squareup/wire/internal/JsonIntegration$StringJsonFormatter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonIntegration.kt\ncom/squareup/wire/internal/JsonIntegration\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,240:1\n37#2:241\n36#2,3:242\n11328#3:245\n11663#3,3:246\n*S KotlinDebug\n*F\n+ 1 JsonIntegration.kt\ncom/squareup/wire/internal/JsonIntegration\n*L\n59#1:241\n59#1:242,3\n60#1:245\n60#1:246,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final jsonAdapter(Ljava/lang/Object;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TF;",
            "Lcom/squareup/wire/Syntax;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;)TA;"
        }
    .end annotation

    .line 69
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->isStruct$wire_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/JsonIntegration;->structAdapter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/squareup/wire/internal/JsonIntegration;->jsonFormatter(Lcom/squareup/wire/Syntax;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/internal/JsonFormatter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0, p2}, Lcom/squareup/wire/internal/JsonIntegration;->formatterAdapter(Lcom/squareup/wire/internal/JsonFormatter;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/internal/JsonIntegration;->frameworkAdapter(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 80
    :goto_1
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/squareup/wire/internal/JsonIntegration;->listAdapter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {p3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getKeyAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/squareup/wire/internal/JsonIntegration;->mapKeyJsonFormatter(Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/internal/JsonFormatter;

    move-result-object p3

    .line 81
    invoke-virtual {p0, p1, p3, p2}, Lcom/squareup/wire/internal/JsonIntegration;->mapAdapter(Ljava/lang/Object;Lcom/squareup/wire/internal/JsonFormatter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_4
    :goto_2
    return-object p2

    .line 76
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.reflect.Type"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final jsonFormatter(Lcom/squareup/wire/Syntax;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/internal/JsonFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Syntax;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;)",
            "Lcom/squareup/wire/internal/JsonFormatter<",
            "*>;"
        }
    .end annotation

    .line 92
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    .line 93
    :cond_0
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$ByteStringJsonFormatter;

    return-object p0

    .line 94
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DURATION:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/squareup/wire/internal/DurationJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/DurationJsonFormatter;

    return-object p0

    .line 95
    :cond_2
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INSTANT:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/internal/InstantJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/InstantJsonFormatter;

    return-object p0

    .line 96
    :cond_3
    instance-of p0, p2, Lcom/squareup/wire/EnumAdapter;

    if-eqz p0, :cond_4

    new-instance p0, Lcom/squareup/wire/internal/EnumJsonFormatter;

    check-cast p2, Lcom/squareup/wire/EnumAdapter;

    invoke-direct {p0, p2}, Lcom/squareup/wire/internal/EnumJsonFormatter;-><init>(Lcom/squareup/wire/EnumAdapter;)V

    return-object p0

    .line 99
    :cond_4
    sget-object p0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    const/4 v1, 0x0

    if-ne p1, p0, :cond_7

    .line 101
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_6

    sget-object v1, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsNumberJsonFormatter;

    :cond_6
    return-object v1

    .line 106
    :cond_7
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move p0, v0

    goto :goto_2

    .line 107
    :cond_8
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_9

    move p0, v0

    goto :goto_3

    .line 108
    :cond_9
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_a

    sget-object v1, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsNumberJsonFormatter;

    goto :goto_9

    .line 109
    :cond_a
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    move p0, v0

    goto :goto_4

    .line 110
    :cond_b
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SFIXED64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_c

    move p0, v0

    goto :goto_5

    .line 111
    :cond_c
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_5
    if-eqz p0, :cond_d

    move p0, v0

    goto :goto_6

    .line 112
    :cond_d
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_6
    if-eqz p0, :cond_e

    sget-object v1, Lcom/squareup/wire/internal/JsonIntegration$LongAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$LongAsStringJsonFormatter;

    goto :goto_9

    .line 113
    :cond_e
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v0

    goto :goto_7

    .line 114
    :cond_f
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_7
    if-eqz p0, :cond_10

    goto :goto_8

    .line 115
    :cond_10
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_11

    sget-object v1, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsStringJsonFormatter;

    :cond_11
    :goto_9
    return-object v1
.end method

.method private final mapKeyJsonFormatter(Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/internal/JsonFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;)",
            "Lcom/squareup/wire/internal/JsonFormatter<",
            "*>;"
        }
    .end annotation

    .line 123
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$StringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$StringJsonFormatter;

    goto/16 :goto_6

    .line 124
    :cond_0
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    .line 125
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_1

    .line 126
    :cond_2
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SFIXED32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_3

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$IntAsStringJsonFormatter;

    goto :goto_6

    .line 127
    :cond_3
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v0

    goto :goto_2

    .line 128
    :cond_4
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_5

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedIntAsStringJsonFormatter;

    goto :goto_6

    .line 129
    :cond_5
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v0

    goto :goto_3

    .line 130
    :cond_6
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SFIXED64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_3
    if-eqz p0, :cond_7

    move p0, v0

    goto :goto_4

    .line 131
    :cond_7
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->SINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_8

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$LongAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$LongAsStringJsonFormatter;

    goto :goto_6

    .line 132
    :cond_8
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    .line 133
    :cond_9
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_a

    sget-object p0, Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsStringJsonFormatter;->INSTANCE:Lcom/squareup/wire/internal/JsonIntegration$UnsignedLongAsStringJsonFormatter;

    :goto_6
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 134
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p1

    const-string v0, "Unexpected map key type: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract formatterAdapter(Lcom/squareup/wire/internal/JsonFormatter;)Ljava/lang/Object;
    .param p1    # Lcom/squareup/wire/internal/JsonFormatter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/JsonFormatter<",
            "*>;)TA;"
        }
    .end annotation
.end method

.method public abstract frameworkAdapter(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .param p2    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/reflect/Type;",
            ")TA;"
        }
    .end annotation
.end method

.method public final jsonAdapters(Lcom/squareup/wire/internal/RuntimeMessageAdapter;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/squareup/wire/internal/RuntimeMessageAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/internal/RuntimeMessageAdapter<",
            "TM;TB;>;TF;)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    check-cast v0, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 11328
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 60
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v5

    invoke-direct {p0, p2, v5, v4}, Lcom/squareup/wire/internal/JsonIntegration;->jsonAdapter(Ljava/lang/Object;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract listAdapter(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TA;"
        }
    .end annotation
.end method

.method public abstract mapAdapter(Ljava/lang/Object;Lcom/squareup/wire/internal/JsonFormatter;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Lcom/squareup/wire/internal/JsonFormatter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Lcom/squareup/wire/internal/JsonFormatter<",
            "*>;TA;)TA;"
        }
    .end annotation
.end method

.method public abstract structAdapter(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TA;"
        }
    .end annotation
.end method
