.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicActionModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

.field public static final enum BEF_AI_DYNAMIC_ACTION_MODEL_SK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 870
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    const-string v1, "BEF_AI_DYNAMIC_ACTION_MODEL_SK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_SK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    .line 871
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    const-string v4, "BEF_AI_DYNAMIC_ACTION_MODEL_DETECT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_DETECT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    .line 872
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    const-string v6, "BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->BEF_AI_DYNAMIC_ACTION_MODEL_DYNAMIC_ACTION:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 869
    sput-object v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 877
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;
    .locals 1

    .line 869
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;
    .locals 1

    .line 869
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 881
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicActionModelType;->value:I

    return p0
.end method
