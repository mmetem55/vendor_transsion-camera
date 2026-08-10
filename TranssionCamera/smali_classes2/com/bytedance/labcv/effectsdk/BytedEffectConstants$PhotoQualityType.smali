.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoQualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

.field public static final enum PHOTO_QUALITY_TYPE_NIGNT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

.field public static final enum PHOTO_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1085
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    const-string v1, "PHOTO_QUALITY_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;->PHOTO_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    .line 1086
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    const-string v3, "PHOTO_QUALITY_TYPE_NIGNT_SCENE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;->PHOTO_QUALITY_TYPE_NIGNT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1084
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1084
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;
    .locals 1

    .line 1084
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;
    .locals 1

    .line 1084
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PhotoQualityType;

    return-object v0
.end method
