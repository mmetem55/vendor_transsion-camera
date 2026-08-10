.class synthetic Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$1;
.super Ljava/lang/Object;
.source "SurfaceTexture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$feature$common$glprogram$SurfaceTexture2dProgram$ProgramType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    invoke-static {}, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;->values()[Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$1;->$SwitchMap$com$transsion$camera$feature$common$glprogram$SurfaceTexture2dProgram$ProgramType:[I

    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$1;->$SwitchMap$com$transsion$camera$feature$common$glprogram$SurfaceTexture2dProgram$ProgramType:[I

    sget-object v1, Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/feature/common/glprogram/SurfaceTexture2dProgram$ProgramType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
