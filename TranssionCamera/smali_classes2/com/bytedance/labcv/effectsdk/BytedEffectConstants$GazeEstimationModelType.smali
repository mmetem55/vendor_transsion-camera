.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GazeEstimationModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

.field public static final enum BEF_GAZE_ESTIMATION_MODEL1:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 996
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    const-string v1, "BEF_GAZE_ESTIMATION_MODEL1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->BEF_GAZE_ESTIMATION_MODEL1:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    new-array v1, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    aput-object v0, v1, v2

    .line 995
    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1000
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;
    .locals 1

    .line 995
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;
    .locals 1

    .line 995
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1004
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->value:I

    return p0
.end method
