.class public final enum Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;
.super Ljava/lang/Enum;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    .line 18
    new-instance v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    const-string v3, "TEXTURE_EXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_EXT:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->$VALUES:[Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;
    .locals 1

    .line 16
    const-class v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->$VALUES:[Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-virtual {v0}, [Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    return-object v0
.end method
