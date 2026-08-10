.class public final enum Lcom/transsion/camera/feature/mode/makeup/data/EffectType;
.super Ljava/lang/Enum;
.source "EffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/makeup/data/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

.field public static final enum CAMERA_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

.field public static final enum CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

.field public static final enum LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

.field public static final enum LIVE_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    const-string v1, "CAMERA_ASIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    .line 5
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    const-string v3, "LIVE_ASIA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    .line 6
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    const-string v5, "CAMERA_NOT_ASIA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->CAMERA_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    .line 7
    new-instance v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    const-string v7, "LIVE_NOT_ASIA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_NOT_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->$VALUES:[Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/makeup/data/EffectType;
    .locals 1

    .line 3
    const-class v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/makeup/data/EffectType;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->$VALUES:[Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    return-object v0
.end method
