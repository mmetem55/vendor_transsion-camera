.class public final enum Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
.super Ljava/lang/Enum;
.source "IAeAfLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/IAeAfLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/mode/IAeAfLock$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field public static final enum AE_AF_AWB_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field public static final enum AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field public static final enum AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field public static final enum AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field public static final enum UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const-string v1, "UNLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 17
    new-instance v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const-string v3, "AE_LOCK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 18
    new-instance v3, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const-string v5, "AF_LOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 19
    new-instance v5, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const-string v7, "AE_AF_LOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 20
    new-instance v7, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const-string v9, "AE_AF_AWB_LOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_AWB_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 15
    sput-object v9, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->$VALUES:[Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 15
    const-class v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 15
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->$VALUES:[Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object v0
.end method
