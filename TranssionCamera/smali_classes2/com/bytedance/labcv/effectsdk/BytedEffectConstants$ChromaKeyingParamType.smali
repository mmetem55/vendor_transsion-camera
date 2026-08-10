.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChromaKeyingParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BALP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_B:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_G:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_BG_R:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_CAL_COLOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_GET_MASK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_KALP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_METHOD:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

.field public static final enum BEF_AI_CHROMA_KEYING_SMOOTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1324
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v1, "BEF_AI_CHROMA_KEYING_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_METHOD:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1327
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v3, "BEF_AI_CHROMA_KEYING_CAL_COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_CAL_COLOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1331
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v5, "BEF_AI_CHROMA_KEYING_BG_R"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_R:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1332
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v7, "BEF_AI_CHROMA_KEYING_BG_G"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_G:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1333
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v9, "BEF_AI_CHROMA_KEYING_BG_B"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BG_B:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1334
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v11, "BEF_AI_CHROMA_KEYING_BALP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_BALP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1337
    new-instance v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v13, "BEF_AI_CHROMA_KEYING_KALP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_KALP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1338
    new-instance v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v15, "BEF_AI_CHROMA_KEYING_SMOOTH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_SMOOTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1342
    new-instance v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v14, "BEF_AI_CHROMA_KEYING_SHARPEN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    .line 1345
    new-instance v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const-string v12, "BEF_AI_CHROMA_KEYING_GET_MASK"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->BEF_AI_CHROMA_KEYING_GET_MASK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 1323
    sput-object v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1355
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;
    .locals 1

    .line 1323
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;
    .locals 1

    .line 1323
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1351
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ChromaKeyingParamType;->value:I

    return p0
.end method
