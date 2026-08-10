.class public final Lcom/squareup/wire/internal/RuntimeMessageAdapter;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RuntimeMessageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/ProtoAdapter<",
        "TM;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeMessageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,214:1\n37#2:215\n36#2,3:216\n11328#3:219\n11663#3,3:220\n11328#3:223\n11663#3,3:224\n*S KotlinDebug\n*F\n+ 1 RuntimeMessageAdapter.kt\ncom/squareup/wire/internal/RuntimeMessageAdapter\n*L\n40#1:215\n40#1:216,3\n41#1:219\n41#1:220,3\n54#1:223\n54#1:224,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding:Lcom/squareup/wire/internal/MessageBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/internal/MessageBinding<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final jsonAlternateNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final jsonNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messageType:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "-TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->Companion:Lcom/squareup/wire/internal/RuntimeMessageAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/internal/MessageBinding;)V
    .locals 6
    .param p1    # Lcom/squareup/wire/internal/MessageBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/MessageBinding<",
            "TM;TB;>;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 29
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getMessageType()Lkotlin/reflect/KClass;

    move-result-object v1

    .line 30
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v3

    .line 27
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    .line 26
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    .line 33
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getMessageType()Lkotlin/reflect/KClass;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    .line 34
    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->getFields()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    .line 40
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, [Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 40
    iput-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 41
    invoke-virtual {p0, v4}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 56
    invoke-virtual {p0, v3}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {p0, v3}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 55
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_3
    iput-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonAlternateNames:Ljava/util/List;

    return-void

    .line 38
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lcom/squareup/wire/ProtoReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoReader;",
            ")TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->newBuilder()Ljava/lang/Object;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 153
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 175
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    .line 177
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p0, v0}, Lcom/squareup/wire/internal/MessageBinding;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    if-eqz v4, :cond_2

    .line 158
    :try_start_0
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v4}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    .line 163
    :goto_1
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->value(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 168
    iget-object v6, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v6, v0, v3, v4, v5}, Lcom/squareup/wire/internal/MessageBinding;->addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 172
    iget-object v5, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v0, v3, v6, v4}, Lcom/squareup/wire/internal/MessageBinding;->addUnknownField(Ljava/lang/Object;ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/ProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 85
    invoke-virtual {v1, p2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v1

    invoke-virtual {v3, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p0, p2}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ReverseProtoWriter;",
            "TM;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p2}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 93
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 94
    iget-object v2, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    aget-object v0, v2, v0

    .line 95
    invoke-virtual {v0, p2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v0

    invoke-virtual {v3, p1, v0, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :goto_1
    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public encodedSize(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->getCachedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 74
    invoke-virtual {v2, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getTag()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v1, p1}, Lcom/squareup/wire/internal/MessageBinding;->unknownFields(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p0, p1, v0}, Lcom/squareup/wire/internal/MessageBinding;->setCachedSerializedSize(Ljava/lang/Object;I)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 129
    instance-of v0, p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    iget-object p1, p1, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFieldBindingsArray()[Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    return-object p0
.end method

.method public final getFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    return-object p0
.end method

.method public final getJsonAlternateNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonAlternateNames:Ljava/util/List;

    return-object p0
.end method

.method public final getJsonName(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/squareup/wire/internal/FieldOrOneOfBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWireFieldJsonName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getDeclaredName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getWireFieldJsonName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final getJsonNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final newBuilder()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p0}, Lcom/squareup/wire/internal/MessageBinding;->newBuilder()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p1}, Lcom/squareup/wire/internal/MessageBinding;->newBuilder()Ljava/lang/Object;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 103
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    sget-object v3, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is required and cannot be redacted."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMessage()Z

    move-result v2

    .line 109
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v1, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/util/List;

    .line 120
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_5
    :goto_2
    invoke-virtual {v1, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getFromBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {v0, p1}, Lcom/squareup/wire/internal/MessageBinding;->clearUnknownFields(Ljava/lang/Object;)V

    .line 125
    iget-object p0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->binding:Lcom/squareup/wire/internal/MessageBinding;

    invoke-interface {p0, p1}, Lcom/squareup/wire/internal/MessageBinding;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->messageType:Lkotlin/reflect/KClass;

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->getFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 139
    invoke-virtual {v2, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ", "

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    .line 142
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "\u2588\u2588"

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final writeAllFields(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TM;",
            "Ljava/util/List<",
            "+TA;>;TA;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "-TA;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsonAdapters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 192
    iget-object v5, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->fieldBindingsArray:[Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    aget-object v5, v5, v3

    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 194
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->omitFromJson(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {v5}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getRedacted()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_2
    iget-object v5, p0, Lcom/squareup/wire/internal/RuntimeMessageAdapter;->jsonNames:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v5, v6, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    if-nez v2, :cond_4

    goto :goto_2

    .line 205
    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p0

    if-ne p1, p0, :cond_5

    move v1, p0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 206
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p0, "__redacted_fields"

    invoke-interface {p4, p0, v2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
