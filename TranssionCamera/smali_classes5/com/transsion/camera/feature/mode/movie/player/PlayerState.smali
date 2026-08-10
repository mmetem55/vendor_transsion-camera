.class public final enum Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/movie/player/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum CLEARING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum CREATING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum DATA_SOURCE_SET:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum END:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum ERROR:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum IDLE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum INITIALIZED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PAUSED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PAUSING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PLAYER_CLEARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PLAYER_CREATED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PREPARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum PREPARING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum RELEASED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum RELEASING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum RESET:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum RESETTING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum SETTING_DATA_SOURCE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum SETTING_NEW_VIEW:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum STARTED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum STARTING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum STOPPED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

.field public static final enum STOPPING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 14
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v1, "SETTING_NEW_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->SETTING_NEW_VIEW:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 15
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->IDLE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 16
    new-instance v3, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->INITIALIZED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 17
    new-instance v5, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v7, "PREPARING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PREPARING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 18
    new-instance v7, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v9, "PREPARED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PREPARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 19
    new-instance v9, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v11, "STARTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STARTING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 20
    new-instance v11, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v13, "STARTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 21
    new-instance v13, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v15, "PAUSING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PAUSING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 22
    new-instance v15, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v14, "PAUSED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PAUSED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 23
    new-instance v14, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v12, "STOPPING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STOPPING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 24
    new-instance v12, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v10, "STOPPED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STOPPED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 25
    new-instance v10, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v8, "RELEASING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->RELEASING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 26
    new-instance v8, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v6, "RELEASED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->RELEASED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 27
    new-instance v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v4, "RESETTING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->RESETTING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 28
    new-instance v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v2, "RESET"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->RESET:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 29
    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v6, "CLEARING_PLAYER"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->CLEARING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 30
    new-instance v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v4, "PLAYER_CLEARED"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYER_CLEARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 31
    new-instance v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v2, "CREATING_PLAYER"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->CREATING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 32
    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v6, "PLAYER_CREATED"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYER_CREATED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 33
    new-instance v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v4, "SETTING_DATA_SOURCE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->SETTING_DATA_SOURCE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 34
    new-instance v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v2, "DATA_SOURCE_SET"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->DATA_SOURCE_SET:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 35
    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v6, "PLAYBACK_COMPLETED"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 36
    new-instance v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v4, "END"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->END:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 37
    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const-string v4, "ERROR"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 13
    sput-object v4, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 1

    .line 13
    const-class v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 1

    .line 13
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object v0
.end method
