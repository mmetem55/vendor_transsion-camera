.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamImuDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

.field public static final enum BEF_AI_SLAM_IMU_ACCELEROMETER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

.field public static final enum BEF_AI_SLAM_IMU_GRAVITY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

.field public static final enum BEF_AI_SLAM_IMU_GYROSCOPE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1360
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    const-string v1, "BEF_AI_SLAM_IMU_ACCELEROMETER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->BEF_AI_SLAM_IMU_ACCELEROMETER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    .line 1361
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    const-string v3, "BEF_AI_SLAM_IMU_GYROSCOPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->BEF_AI_SLAM_IMU_GYROSCOPE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    .line 1362
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    const-string v5, "BEF_AI_SLAM_IMU_GRAVITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->BEF_AI_SLAM_IMU_GRAVITY:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1359
    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1369
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;
    .locals 1

    .line 1359
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;
    .locals 1

    .line 1359
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1366
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->value:I

    return p0
.end method
