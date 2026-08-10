.class final enum Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
.super Ljava/lang/Enum;
.source "MediaChainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaChainState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 48
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v3, "STATE_ALGORITHM_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 49
    new-instance v3, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v5, "STATE_PROCESSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 50
    new-instance v5, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const-string v7, "STATE_PROCESS_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 46
    sput-object v7, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 1

    .line 46
    const-class v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 1

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->$VALUES:[Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object v0
.end method
