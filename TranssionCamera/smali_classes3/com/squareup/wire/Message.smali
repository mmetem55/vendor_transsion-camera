.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "Message.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Message$Builder;,
        Lcom/squareup/wire/Message$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/squareup/wire/Message$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient adapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient cachedSerializedSize:I

.field protected transient hashCode:I

.field private final transient unknownFields:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/Message$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/Message$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/Message;->Companion:Lcom/squareup/wire/Message$Companion;

    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    .line 38
    iput-object p2, p0, Lcom/squareup/wire/Message;->unknownFields:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final adapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-object p0
.end method

.method public final encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public final encode(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->encode(Lokio/BufferedSink;Ljava/lang/Object;)V

    return-void
.end method

.method public final encode()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public final encodeByteString()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->encodeByteString(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final getCachedSerializedSize$wire_runtime()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    return p0
.end method

.method public abstract newBuilder()Lcom/squareup/wire/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final setCachedSerializedSize$wire_runtime(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/squareup/wire/Message;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unknownFields()Lokio/ByteString;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/squareup/wire/Message;->unknownFields:Lokio/ByteString;

    if-nez p0, :cond_0

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_0
    return-object p0
.end method

.method public final withoutUnknownFields()Lcom/squareup/wire/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->newBuilder()Lcom/squareup/wire/Message$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 64
    new-instance v0, Lcom/squareup/wire/MessageSerializedForm;

    invoke-virtual {p0}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/squareup/wire/MessageSerializedForm;-><init>([BLjava/lang/Class;)V

    return-object v0
.end method
