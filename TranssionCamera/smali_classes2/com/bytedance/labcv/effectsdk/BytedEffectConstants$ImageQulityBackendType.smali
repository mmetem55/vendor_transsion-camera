.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQulityBackendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

.field public static final enum IMAGE_QUALITY_BACKEND_GPU:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1150
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    const-string v1, "IMAGE_QUALITY_BACKEND_GPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->IMAGE_QUALITY_BACKEND_GPU:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    aput-object v0, v1, v2

    .line 1149
    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1155
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;
    .locals 1

    .line 1149
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;
    .locals 1

    .line 1149
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 1159
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityBackendType;->type:I

    return p0
.end method
