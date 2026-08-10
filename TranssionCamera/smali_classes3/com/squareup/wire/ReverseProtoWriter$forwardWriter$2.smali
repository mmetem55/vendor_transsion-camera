.class final Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReverseProtoWriter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/ReverseProtoWriter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/squareup/wire/ProtoWriter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/wire/ReverseProtoWriter;


# direct methods
.method constructor <init>(Lcom/squareup/wire/ReverseProtoWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;->this$0:Lcom/squareup/wire/ReverseProtoWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/squareup/wire/ProtoWriter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;->this$0:Lcom/squareup/wire/ReverseProtoWriter;

    invoke-static {p0}, Lcom/squareup/wire/ReverseProtoWriter;->access$getForwardBuffer(Lcom/squareup/wire/ReverseProtoWriter;)Lokio/Buffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/squareup/wire/ReverseProtoWriter$forwardWriter$2;->invoke()Lcom/squareup/wire/ProtoWriter;

    move-result-object p0

    return-object p0
.end method
