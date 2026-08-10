.class public final Lcom/squareup/wire/AnyMessage$Companion;
.super Ljava/lang/Object;
.source "AnyMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AnyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/AnyMessage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final pack(Lcom/squareup/wire/Message;)Lcom/squareup/wire/AnyMessage;
    .locals 2
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message<",
            "**>;)",
            "Lcom/squareup/wire/AnyMessage;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Lcom/squareup/wire/AnyMessage;

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->encodeByteString()Lokio/ByteString;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recompile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to use it with AnyMessage"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
