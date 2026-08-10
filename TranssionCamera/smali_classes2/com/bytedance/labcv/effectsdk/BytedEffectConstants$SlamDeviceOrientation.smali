.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamDeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

.field public static final enum BEF_AI_SLAM_LandscapeLeft:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

.field public static final enum BEF_AI_SLAM_LandscapeRight:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

.field public static final enum BEF_AI_SLAM_Portrait:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

.field public static final enum BEF_AI_SLAM_UpsideDown:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1430
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    const-string v1, "BEF_AI_SLAM_Portrait"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->BEF_AI_SLAM_Portrait:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    .line 1431
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    const-string v3, "BEF_AI_SLAM_LandscapeLeft"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->BEF_AI_SLAM_LandscapeLeft:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    .line 1432
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    const-string v5, "BEF_AI_SLAM_UpsideDown"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->BEF_AI_SLAM_UpsideDown:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    .line 1433
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    const-string v7, "BEF_AI_SLAM_LandscapeRight"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->BEF_AI_SLAM_LandscapeRight:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1429
    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1439
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;
    .locals 1

    .line 1429
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;
    .locals 1

    .line 1429
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1436
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->value:I

    return p0
.end method
