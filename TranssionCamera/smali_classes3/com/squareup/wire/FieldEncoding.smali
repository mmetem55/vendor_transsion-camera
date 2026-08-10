.class public final enum Lcom/squareup/wire/FieldEncoding;
.super Ljava/lang/Enum;
.source "FieldEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/FieldEncoding$Companion;,
        Lcom/squareup/wire/FieldEncoding$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/FieldEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/FieldEncoding;

.field public static final Companion:Lcom/squareup/wire/FieldEncoding$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum FIXED32:Lcom/squareup/wire/FieldEncoding;

.field public static final enum FIXED64:Lcom/squareup/wire/FieldEncoding;

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

.field public static final enum VARINT:Lcom/squareup/wire/FieldEncoding;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/squareup/wire/FieldEncoding;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/wire/FieldEncoding;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/squareup/wire/FieldEncoding;

    const-string v1, "VARINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    new-instance v0, Lcom/squareup/wire/FieldEncoding;

    const-string v1, "FIXED64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    new-instance v0, Lcom/squareup/wire/FieldEncoding;

    const-string v1, "LENGTH_DELIMITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    new-instance v0, Lcom/squareup/wire/FieldEncoding;

    const-string v1, "FIXED32"

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/FieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    invoke-static {}, Lcom/squareup/wire/FieldEncoding;->$values()[Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->$VALUES:[Lcom/squareup/wire/FieldEncoding;

    new-instance v0, Lcom/squareup/wire/FieldEncoding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/FieldEncoding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/FieldEncoding;->Companion:Lcom/squareup/wire/FieldEncoding$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/wire/FieldEncoding;->value:I

    return-void
.end method

.method public static final get$wire_runtime(I)Lcom/squareup/wire/FieldEncoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->Companion:Lcom/squareup/wire/FieldEncoding$Companion;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/FieldEncoding$Companion;->get$wire_runtime(I)Lcom/squareup/wire/FieldEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/FieldEncoding;
    .locals 1

    const-class v0, Lcom/squareup/wire/FieldEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/FieldEncoding;
    .locals 1

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->$VALUES:[Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/FieldEncoding;

    return-object v0
.end method


# virtual methods
.method public final getValue$wire_runtime()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/squareup/wire/FieldEncoding;->value:I

    return p0
.end method

.method public final rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    sget-object v0, Lcom/squareup/wire/FieldEncoding$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 34
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 33
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED64:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    .line 32
    :cond_2
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FIXED32:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0

    .line 31
    :cond_3
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    :goto_0
    return-object p0
.end method
