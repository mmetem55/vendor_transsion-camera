.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixlFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_NV12:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_NV21:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum BEF_AI_PIX_FMT_YUV420P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum BGR888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum BGRA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum RGB888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

.field public static final enum RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v1, "RGBA8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 17
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v3, "BGRA8888"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->BGRA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 18
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v5, "BGR888"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->BGR888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 19
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v7, "RGB888"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGB888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 20
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v9, "BEF_AI_PIX_FMT_YUV420P"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->BEF_AI_PIX_FMT_YUV420P:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 21
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v12, "BEF_AI_PIX_FMT_NV12"

    const/4 v13, 0x6

    invoke-direct {v9, v12, v11, v13}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->BEF_AI_PIX_FMT_NV12:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    .line 22
    new-instance v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const-string v14, "BEF_AI_PIX_FMT_NV21"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->BEF_AI_PIX_FMT_NV21:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    new-array v14, v15, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v11

    aput-object v12, v14, v13

    .line 15
    sput-object v14, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;
    .locals 1

    .line 15
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->value:I

    return p0
.end method
