.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

.field public static final enum IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1077
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v1, "IMAGE_QUALITY_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1078
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v3, "IMAGE_QUALITY_TYPE_VIDEO_SR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_VIDEO_SR:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1079
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v5, "IMAGE_QUALITY_TYPE_NIGHT_SCENE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_NIGHT_SCENE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1080
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v7, "IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ADAPTIVE_SHARPEN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    .line 1081
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const-string v9, "IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->IMAGE_QUALITY_TYPE_ONEKEY_ENHANCE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1076
    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1076
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
    .locals 1

    .line 1076
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;
    .locals 1

    .line 1076
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityType;

    return-object v0
.end method
