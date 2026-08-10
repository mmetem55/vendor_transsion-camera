.class public final enum Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
.super Ljava/lang/Enum;
.source "IVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 28
    new-instance v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v3, "STATE_RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 32
    new-instance v3, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v5, "STATE_PRE_RECORDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 36
    new-instance v5, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v7, "STATE_PAUSE_RECORDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 40
    new-instance v7, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v9, "STATE_RESUME_RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 44
    new-instance v9, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v11, "STATE_SAVING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 19
    sput-object v11, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->$VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .locals 1

    .line 19
    const-class v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->$VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object v0
.end method
