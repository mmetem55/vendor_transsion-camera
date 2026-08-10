.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlamResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_180P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_360P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_480P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

.field public static final enum BEF_AI_SLAM_720P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1402
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v1, "BEF_AI_SLAM_480P"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_480P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1403
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v3, "BEF_AI_SLAM_720P"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_720P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1404
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v5, "BEF_AI_SLAM_360P"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_360P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    .line 1405
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const-string v7, "BEF_AI_SLAM_180P"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->BEF_AI_SLAM_180P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1401
    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1411
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
    .locals 1

    .line 1401
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;
    .locals 1

    .line 1401
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1408
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamResolution;->value:I

    return p0
.end method
