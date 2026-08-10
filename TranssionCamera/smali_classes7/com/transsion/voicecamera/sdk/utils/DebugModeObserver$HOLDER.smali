.class Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$HOLDER;
.super Ljava/lang/Object;
.source "DebugModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HOLDER"
.end annotation


# static fields
.field private static INSTANCE:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;-><init>()V

    sput-object v0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$HOLDER;->INSTANCE:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;
    .locals 1

    .line 52
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$HOLDER;->INSTANCE:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    return-object v0
.end method
