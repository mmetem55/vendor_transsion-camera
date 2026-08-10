.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GazeEstimationParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

.field public static final enum BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 981
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    const-string v1, "BEF_GAZE_ESTIMATION_EDGE_MODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_EDGE_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    .line 982
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    const-string v4, "BEF_GAZE_ESTIMATION_CAMERA_FOV"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_CAMERA_FOV:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    .line 983
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    const-string v6, "BEF_GAZE_ESTIMATION_DIVERGENCE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->BEF_GAZE_ESTIMATION_DIVERGENCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    new-array v6, v7, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 980
    sput-object v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 990
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 991
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;
    .locals 1

    .line 980
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;
    .locals 1

    .line 980
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 987
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->value:I

    return p0
.end method
