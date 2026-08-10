.class public final enum Lcom/transsion/ardrawlines/brush/BrushType;
.super Ljava/lang/Enum;
.source "BrushType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ardrawlines/brush/BrushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/ardrawlines/brush/BrushType;

.field public static final enum FIREWORK:Lcom/transsion/ardrawlines/brush/BrushType;

.field public static final enum FLOWING:Lcom/transsion/ardrawlines/brush/BrushType;

.field public static final enum GRADIENT:Lcom/transsion/ardrawlines/brush/BrushType;

.field public static final enum NEON:Lcom/transsion/ardrawlines/brush/BrushType;

.field public static final enum SOLID:Lcom/transsion/ardrawlines/brush/BrushType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/ardrawlines/brush/BrushType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/ardrawlines/brush/BrushType;

    .line 3
    sget-object v1, Lcom/transsion/ardrawlines/brush/BrushType;->SOLID:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/brush/BrushType;->NEON:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/brush/BrushType;->GRADIENT:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/brush/BrushType;->FIREWORK:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/brush/BrushType;->FLOWING:Lcom/transsion/ardrawlines/brush/BrushType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/transsion/ardrawlines/brush/BrushType;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/brush/BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->SOLID:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 5
    new-instance v0, Lcom/transsion/ardrawlines/brush/BrushType;

    const-string v1, "NEON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/brush/BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->NEON:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 6
    new-instance v0, Lcom/transsion/ardrawlines/brush/BrushType;

    const-string v1, "GRADIENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/brush/BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->GRADIENT:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 7
    new-instance v0, Lcom/transsion/ardrawlines/brush/BrushType;

    const-string v1, "FIREWORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/brush/BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->FIREWORK:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 8
    new-instance v0, Lcom/transsion/ardrawlines/brush/BrushType;

    const-string v1, "FLOWING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/brush/BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->FLOWING:Lcom/transsion/ardrawlines/brush/BrushType;

    .line 3
    invoke-static {}, Lcom/transsion/ardrawlines/brush/BrushType;->$values()[Lcom/transsion/ardrawlines/brush/BrushType;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->$VALUES:[Lcom/transsion/ardrawlines/brush/BrushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ardrawlines/brush/BrushType;
    .locals 1

    .line 3
    const-class v0, Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/brush/BrushType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ardrawlines/brush/BrushType;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/ardrawlines/brush/BrushType;->$VALUES:[Lcom/transsion/ardrawlines/brush/BrushType;

    invoke-virtual {v0}, [Lcom/transsion/ardrawlines/brush/BrushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ardrawlines/brush/BrushType;

    return-object v0
.end method
