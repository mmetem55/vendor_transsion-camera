.class public final enum Lcom/squareup/wire/WireField$Label;
.super Ljava/lang/Enum;
.source "WireField.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/WireField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/WireField$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/WireField$Label;

.field public static final enum OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;

.field public static final enum ONE_OF:Lcom/squareup/wire/WireField$Label;

.field public static final enum OPTIONAL:Lcom/squareup/wire/WireField$Label;

.field public static final enum PACKED:Lcom/squareup/wire/WireField$Label;

.field public static final enum REPEATED:Lcom/squareup/wire/WireField$Label;

.field public static final enum REQUIRED:Lcom/squareup/wire/WireField$Label;


# direct methods
.method private static final synthetic $values()[Lcom/squareup/wire/WireField$Label;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/squareup/wire/WireField$Label;

    sget-object v1, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->OPTIONAL:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    .line 70
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "OPTIONAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->OPTIONAL:Lcom/squareup/wire/WireField$Label;

    .line 71
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "REPEATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    .line 72
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "ONE_OF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    .line 74
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "PACKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    .line 80
    new-instance v0, Lcom/squareup/wire/WireField$Label;

    const-string v1, "OMIT_IDENTITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/squareup/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;

    invoke-static {}, Lcom/squareup/wire/WireField$Label;->$values()[Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/WireField$Label;->$VALUES:[Lcom/squareup/wire/WireField$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/WireField$Label;
    .locals 1

    const-class v0, Lcom/squareup/wire/WireField$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/WireField$Label;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/WireField$Label;
    .locals 1

    sget-object v0, Lcom/squareup/wire/WireField$Label;->$VALUES:[Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/WireField$Label;

    return-object v0
.end method


# virtual methods
.method public final isOneOf()Z
    .locals 1

    .line 90
    sget-object v0, Lcom/squareup/wire/WireField$Label;->ONE_OF:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPacked()Z
    .locals 1

    .line 87
    sget-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRepeated()Z
    .locals 1

    .line 84
    sget-object v0, Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/squareup/wire/WireField$Label;->PACKED:Lcom/squareup/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
