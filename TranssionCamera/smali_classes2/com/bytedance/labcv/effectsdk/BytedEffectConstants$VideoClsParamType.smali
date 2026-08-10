.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoClsParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

.field public static final enum BEF_AI_kVideoClsEdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 968
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    const-string v1, "BEF_AI_kVideoClsEdgeMode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->BEF_AI_kVideoClsEdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    new-array v1, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    aput-object v0, v1, v2

    .line 967
    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 975
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 976
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;
    .locals 1

    .line 967
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;
    .locals 1

    .line 967
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 972
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$VideoClsParamType;->value:I

    return p0
.end method
