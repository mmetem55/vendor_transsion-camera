.class final Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;
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
        "Lokio/Buffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;

    invoke-direct {v0}, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;-><init>()V

    sput-object v0, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;->INSTANCE:Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/squareup/wire/ReverseProtoWriter$forwardBuffer$2;->invoke()Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    return-object p0
.end method
