.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityVfiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

.field public static final enum IMAGE_QUALITY_VFI_TYPE_COVER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

.field public static final enum IMAGE_QUALITY_VFI_TYPE_UM:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1115
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    const-string v1, "IMAGE_QUALITY_VFI_TYPE_UM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->IMAGE_QUALITY_VFI_TYPE_UM:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    .line 1116
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    const-string v3, "IMAGE_QUALITY_VFI_TYPE_COVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->IMAGE_QUALITY_VFI_TYPE_COVER:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1114
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1119
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;
    .locals 1

    .line 1114
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;
    .locals 1

    .line 1114
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1122
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityVfiType;->value:I

    return p0
.end method
