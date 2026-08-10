.class public final enum Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;
.super Ljava/lang/Enum;
.source "IAppUIListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

.field public static final enum AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

.field public static final enum Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

.field public static final enum DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    .line 22
    new-instance v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    const-string v3, "AUX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    .line 23
    new-instance v3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    const-string v5, "Background"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 20
    sput-object v5, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->$VALUES:[Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    return-object v0
.end method
