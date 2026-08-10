.class public final enum Lcom/transsion/camera/app/common/IApp$State;
.super Ljava/lang/Enum;
.source "IApp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/IApp$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IApp$State;

.field public static final enum STATE_CAPTURING:Lcom/transsion/camera/app/common/IApp$State;

.field public static final enum STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

.field public static final enum STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/IApp$State;

    const-string v1, "STATE_RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IApp$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    .line 18
    new-instance v1, Lcom/transsion/camera/app/common/IApp$State;

    const-string v3, "STATE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/IApp$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    .line 19
    new-instance v3, Lcom/transsion/camera/app/common/IApp$State;

    const-string v5, "STATE_CAPTURING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/IApp$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/IApp$State;->STATE_CAPTURING:Lcom/transsion/camera/app/common/IApp$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/app/common/IApp$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 16
    sput-object v5, Lcom/transsion/camera/app/common/IApp$State;->$VALUES:[Lcom/transsion/camera/app/common/IApp$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IApp$State;
    .locals 1

    .line 16
    const-class v0, Lcom/transsion/camera/app/common/IApp$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IApp$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IApp$State;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->$VALUES:[Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IApp$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IApp$State;

    return-object v0
.end method
