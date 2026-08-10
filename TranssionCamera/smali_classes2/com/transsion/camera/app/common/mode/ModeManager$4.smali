.class synthetic Lcom/transsion/camera/app/common/mode/ModeManager$4;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$app$common$IAppUIListener$ISurfaceStatusListener$SurfaceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2038
    invoke-static {}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->values()[Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->$SwitchMap$com$transsion$camera$app$common$IAppUIListener$ISurfaceStatusListener$SurfaceType:[I

    :try_start_0
    sget-object v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager$4;->$SwitchMap$com$transsion$camera$app$common$IAppUIListener$ISurfaceStatusListener$SurfaceType:[I

    sget-object v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
