.class public final enum Lcom/transsion/camera/app/common/mode/VideoState;
.super Ljava/lang/Enum;
.source "VideoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/mode/VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_PRE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v3, "STATE_PREVIEWING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 31
    new-instance v3, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v5, "STATE_PREVIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 36
    new-instance v5, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v7, "STATE_PRE_RECORDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 42
    new-instance v7, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v9, "STATE_RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 47
    new-instance v9, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v11, "STATE_PAUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 53
    new-instance v11, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v13, "STATE_PRE_SAVING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 58
    new-instance v13, Lcom/transsion/camera/app/common/mode/VideoState;

    const-string v15, "STATE_SAVING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/transsion/camera/app/common/mode/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_SAVING:Lcom/transsion/camera/app/common/mode/VideoState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/transsion/camera/app/common/mode/VideoState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 16
    sput-object v15, Lcom/transsion/camera/app/common/mode/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoState;
    .locals 1

    .line 16
    const-class v0, Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/VideoState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/mode/VideoState;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/mode/VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/mode/VideoState;

    return-object v0
.end method
