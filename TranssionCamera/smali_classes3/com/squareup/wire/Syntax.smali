.class public final enum Lcom/squareup/wire/Syntax;
.super Ljava/lang/Enum;
.source "Syntax.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Syntax$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/Syntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/Syntax;

.field public static final Companion:Lcom/squareup/wire/Syntax$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum PROTO_2:Lcom/squareup/wire/Syntax;

.field public static final enum PROTO_3:Lcom/squareup/wire/Syntax;


# instance fields
.field private final string:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/squareup/wire/Syntax;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/wire/Syntax;

    sget-object v1, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/squareup/wire/Syntax;

    const-string v1, "PROTO_2"

    const/4 v2, 0x0

    const-string v3, "proto2"

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 21
    new-instance v0, Lcom/squareup/wire/Syntax;

    const-string v1, "PROTO_3"

    const/4 v2, 0x1

    const-string v3, "proto3"

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    invoke-static {}, Lcom/squareup/wire/Syntax;->$values()[Lcom/squareup/wire/Syntax;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/Syntax;->$VALUES:[Lcom/squareup/wire/Syntax;

    new-instance v0, Lcom/squareup/wire/Syntax$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/Syntax$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/Syntax;->Companion:Lcom/squareup/wire/Syntax$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getString$p(Lcom/squareup/wire/Syntax;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/Syntax;
    .locals 1

    const-class v0, Lcom/squareup/wire/Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Syntax;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/Syntax;
    .locals 1

    sget-object v0, Lcom/squareup/wire/Syntax;->$VALUES:[Lcom/squareup/wire/Syntax;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/Syntax;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-object p0
.end method
