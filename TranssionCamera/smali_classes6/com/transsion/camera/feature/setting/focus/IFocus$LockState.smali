.class public final enum Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;
.super Ljava/lang/Enum;
.source "IFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/IFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field public static final enum STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field public static final enum STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field public static final enum STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const-string v1, "STATE_UNLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 20
    new-instance v1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const-string v3, "STATE_LOCKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 24
    new-instance v3, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const-string v5, "STATE_LOCKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 12
    sput-object v5, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->$VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;
    .locals 1

    .line 12
    const-class v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;
    .locals 1

    .line 12
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->$VALUES:[Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    return-object v0
.end method
