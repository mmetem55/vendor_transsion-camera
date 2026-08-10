.class public final enum Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
.super Ljava/lang/Enum;
.source "ICameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ICameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field public static final enum PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field public static final enum VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 128
    new-instance v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 129
    new-instance v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 127
    sput-object v3, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 1

    .line 127
    const-class v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 1

    .line 127
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object v0
.end method
