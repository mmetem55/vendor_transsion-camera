.class synthetic Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$1;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$common$mediacodec$record$renderer$TextureRenderer$ProgramType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->values()[Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$1;->$SwitchMap$com$transsion$common$mediacodec$record$renderer$TextureRenderer$ProgramType:[I

    :try_start_0
    sget-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$1;->$SwitchMap$com$transsion$common$mediacodec$record$renderer$TextureRenderer$ProgramType:[I

    sget-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_EXT:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
