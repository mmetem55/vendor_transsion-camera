.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityPostProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

.field public static final enum IMAGE_QUALITY_POST_PROCESS_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

.field public static final enum IMAGE_QUALITY_POST_PROCESS_TYPE_VFI:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1090
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    const-string v1, "IMAGE_QUALITY_POST_PROCESS_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;->IMAGE_QUALITY_POST_PROCESS_TYPE_NONE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    .line 1091
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    const-string v3, "IMAGE_QUALITY_POST_PROCESS_TYPE_VFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;->IMAGE_QUALITY_POST_PROCESS_TYPE_VFI:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1089
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1089
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;
    .locals 1

    .line 1089
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;
    .locals 1

    .line 1089
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityPostProcessType;

    return-object v0
.end method
