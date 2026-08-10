.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_AUTO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_LOW_POWER_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_MAX_TEST_FRAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_CLS_SMOOTH_FACTOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_DETECT_MIN_SIDE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_IS_USE_DOUBLE_GESTURE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_MAX_HAND_NUM:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_NARUTO_GESTUER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HAND_USE_ACTION_SMOOTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

.field public static final enum BEF_HNAD_ENLARGE_FACTOR_REG:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 574
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v1, "BEF_HAND_MAX_HAND_NUM"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_MAX_HAND_NUM:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 579
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v4, "BEF_HAND_DETECT_MIN_SIDE"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_DETECT_MIN_SIDE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 585
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v7, "BEF_HAND_CLS_SMOOTH_FACTOR"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_CLS_SMOOTH_FACTOR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 590
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v9, "BEF_HAND_USE_ACTION_SMOOTH"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_USE_ACTION_SMOOTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 596
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v11, "BEF_HAND_ALGO_LOW_POWER_MODE"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_ALGO_LOW_POWER_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 604
    new-instance v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v13, "BEF_HAND_ALGO_AUTO_MODE"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_ALGO_AUTO_MODE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 609
    new-instance v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v15, "BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_ALGO_TIME_ELAPSED_THRESHOLD:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 615
    new-instance v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v12, "BEF_HAND_ALGO_MAX_TEST_FRAME"

    const/16 v8, 0x9

    invoke-direct {v15, v12, v14, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_ALGO_MAX_TEST_FRAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 620
    new-instance v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v14, "BEF_HAND_IS_USE_DOUBLE_GESTURE"

    const/16 v6, 0xa

    invoke-direct {v12, v14, v10, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_IS_USE_DOUBLE_GESTURE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 625
    new-instance v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v10, "BEF_HNAD_ENLARGE_FACTOR_REG"

    const/16 v3, 0xb

    invoke-direct {v14, v10, v8, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HNAD_ENLARGE_FACTOR_REG:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    .line 632
    new-instance v10, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    const-string v8, "BEF_HAND_NARUTO_GESTUER"

    const/16 v5, 0xc

    invoke-direct {v10, v8, v6, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->BEF_HAND_NARUTO_GESTUER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v12, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    aput-object v10, v3, v6

    .line 569
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 637
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 638
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;
    .locals 1

    .line 569
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;
    .locals 1

    .line 569
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 642
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HandParamType;->value:I

    return p0
.end method
