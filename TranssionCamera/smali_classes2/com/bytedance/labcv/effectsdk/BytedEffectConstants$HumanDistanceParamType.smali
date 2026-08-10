.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HumanDistanceParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceCameraFov:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

.field public static final enum BEF_HumanDistanceEdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 714
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    const-string v1, "BEF_HumanDistanceEdgeMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->BEF_HumanDistanceEdgeMode:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    .line 715
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    const-string v3, "BEF_HumanDistanceCameraFov"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->BEF_HumanDistanceCameraFov:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 713
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 719
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 720
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;
    .locals 1

    .line 713
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;
    .locals 1

    .line 713
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 724
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceParamType;->value:I

    return p0
.end method
