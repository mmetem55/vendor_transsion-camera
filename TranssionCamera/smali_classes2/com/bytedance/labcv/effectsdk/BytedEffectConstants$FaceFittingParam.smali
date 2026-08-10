.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceFittingParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Eps:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Lambda:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Ratio:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Solver_Smooth:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

.field public static final enum BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1458
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v1, "BEF_AI_FACEFITTING_Solver_Lambda"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Lambda:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1459
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v4, "BEF_AI_FACEFITTING_Solver_MaxIter"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_MaxIter:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1460
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v6, "BEF_AI_FACEFITTING_Solver_Eps"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Eps:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1461
    new-instance v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v8, "BEF_AI_FACEFITTING_Solver_Ratio"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Ratio:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1462
    new-instance v8, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v10, "BEF_AI_FACEFITTING_Solver_Smooth"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Smooth:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1463
    new-instance v10, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v12, "BEF_AI_FACEFITTING_Solver_Camera_Type"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Solver_Camera_Type:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1464
    new-instance v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v14, "BEF_AI_FACEFITTING_Config_Cal_TB"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Config_Cal_TB:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1465
    new-instance v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v13, "BEF_AI_FACEFITTING_Eyelash_Flag"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Eyelash_Flag:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1466
    new-instance v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v15, "BEF_AI_FACEFITTING_Use_Semantic_Lmk"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Use_Semantic_Lmk:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    .line 1467
    new-instance v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    const-string v11, "BEF_AI_FACEFITTING_Mouth_BS_Limit"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->BEF_AI_FACEFITTING_Mouth_BS_Limit:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    new-array v7, v7, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    aput-object v15, v7, v9

    .line 1457
    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;
    .locals 1

    .line 1457
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;
    .locals 1

    .line 1457
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1470
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceFittingParam;->value:I

    return p0
.end method
