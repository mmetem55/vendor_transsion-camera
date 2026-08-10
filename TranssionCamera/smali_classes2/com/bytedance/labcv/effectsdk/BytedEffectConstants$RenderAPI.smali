.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderAPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

.field public static final enum GLES20:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

.field public static final enum GLES30:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    const-string v1, "GLES20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->GLES20:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    .line 41
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    const-string v3, "GLES30"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->GLES30:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 39
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;
    .locals 1

    .line 39
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;
    .locals 1

    .line 39
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$RenderAPI;->value:I

    return p0
.end method
