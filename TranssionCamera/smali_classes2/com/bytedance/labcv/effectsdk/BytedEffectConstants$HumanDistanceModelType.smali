.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HumanDistanceModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

.field public static final enum BEF_HUMAN_DISTANCE_MODEL1:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 826
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    const-string v1, "BEF_HUMAN_DISTANCE_MODEL1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->BEF_HUMAN_DISTANCE_MODEL1:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    new-array v1, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    aput-object v0, v1, v2

    .line 825
    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 830
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 831
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;
    .locals 1

    .line 825
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;
    .locals 1

    .line 825
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 835
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->value:I

    return p0
.end method
