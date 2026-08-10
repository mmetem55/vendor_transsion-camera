.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadSegmentParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

.field public static final enum BEF_AI_HS_ENABLE_TRACKING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

.field public static final enum BEF_AI_HS_MAX_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 704
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    const-string v1, "BEF_AI_HS_ENABLE_TRACKING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_ENABLE_TRACKING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    .line 705
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    const-string v4, "BEF_AI_HS_MAX_FACE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_MAX_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    new-array v4, v5, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 703
    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 709
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;
    .locals 1

    .line 703
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;
    .locals 1

    .line 703
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 710
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->value:I

    return p0
.end method
