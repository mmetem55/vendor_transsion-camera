.class public final enum Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;
.super Ljava/lang/Enum;
.source "RecordButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/view/RecordButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

.field public static final enum NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

.field public static final enum RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

.field public static final enum RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

.field public static final enum SCREENSHOT:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 385
    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->SCREENSHOT:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 386
    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const-string v1, "NOT_RECORDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->NOT_RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const-string v1, "RECORDING_REQUESTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING_REQUESTED:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const-string v1, "RECORDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->RECORDING:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    new-instance v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    const-string v1, "SCREENSHOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->SCREENSHOT:Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    .line 385
    invoke-static {}, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->$values()[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->$VALUES:[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;
    .locals 1

    .line 385
    const-class v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;
    .locals 1

    .line 385
    sget-object v0, Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->$VALUES:[Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    invoke-virtual {v0}, [Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ardrawlines/view/RecordButton$RecordingState;

    return-object v0
.end method
