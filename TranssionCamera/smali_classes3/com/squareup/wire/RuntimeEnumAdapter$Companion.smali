.class public final Lcom/squareup/wire/RuntimeEnumAdapter$Companion;
.super Ljava/lang/Object;
.source "RuntimeEnumAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/RuntimeEnumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/RuntimeEnumAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Lcom/squareup/wire/RuntimeEnumAdapter;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/WireEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/squareup/wire/RuntimeEnumAdapter<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "enumType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->Companion:Lcom/squareup/wire/ProtoAdapter$Companion;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$Companion;->get(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    .line 50
    new-instance v0, Lcom/squareup/wire/RuntimeEnumAdapter;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getSyntax()Lcom/squareup/wire/Syntax;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/squareup/wire/RuntimeEnumAdapter;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V

    return-object v0
.end method
