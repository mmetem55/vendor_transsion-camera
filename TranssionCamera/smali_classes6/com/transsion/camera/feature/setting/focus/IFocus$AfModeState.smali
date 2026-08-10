.class public final enum Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;
.super Ljava/lang/Enum;
.source "IFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/IFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AfModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_INVALID:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_MULTI:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

.field public static final enum STATE_SINGLE:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v1, "STATE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->STATE_INVALID:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    .line 38
    new-instance v1, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v3, "STATE_SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->STATE_SINGLE:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    .line 42
    new-instance v3, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    const-string v5, "STATE_MULTI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->STATE_MULTI:Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 30
    sput-object v5, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->$VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 1

    .line 30
    const-class v0, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->$VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/setting/focus/IFocus$AfModeState;

    return-object v0
.end method
