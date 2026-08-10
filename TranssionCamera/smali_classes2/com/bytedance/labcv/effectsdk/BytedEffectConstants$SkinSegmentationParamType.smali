.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SkinSegmentationParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

.field public static final enum BEF_AI_SKIN_SEG_IS_NEED_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

.field public static final enum BEF_AI_SKIN_SEG_MODEL_KEY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1291
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    const-string v1, "BEF_AI_SKIN_SEG_MODEL_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->BEF_AI_SKIN_SEG_MODEL_KEY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    .line 1292
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    const-string v3, "BEF_AI_SKIN_SEG_IS_NEED_FACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->BEF_AI_SKIN_SEG_IS_NEED_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1290
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1300
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;
    .locals 1

    .line 1290
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;
    .locals 1

    .line 1290
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1296
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SkinSegmentationParamType;->value:I

    return p0
.end method
