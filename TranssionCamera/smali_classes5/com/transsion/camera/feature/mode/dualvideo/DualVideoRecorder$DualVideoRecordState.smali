.class public final enum Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
.super Ljava/lang/Enum;
.source "DualVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualVideoRecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v1, "STATE_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 38
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v3, "STATE_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 39
    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v5, "STATE_PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 40
    new-instance v5, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v7, "STATE_STOPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 36
    sput-object v7, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .locals 1

    .line 36
    const-class v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-object v0
.end method
