.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamImageColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_BGR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_GRAY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

.field public static final enum BEF_AI_SLAM_RGB:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1416
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    const-string v1, "BEF_AI_SLAM_RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->BEF_AI_SLAM_RGB:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    .line 1417
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    const-string v3, "BEF_AI_SLAM_BGR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->BEF_AI_SLAM_BGR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    .line 1418
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    const-string v5, "BEF_AI_SLAM_GRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->BEF_AI_SLAM_GRAY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1415
    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1425
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;
    .locals 1

    .line 1415
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;
    .locals 1

    .line 1415
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1422
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImageColor;->value:I

    return p0
.end method
