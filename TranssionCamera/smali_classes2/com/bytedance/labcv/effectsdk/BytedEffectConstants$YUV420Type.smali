.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YUV420Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

.field public static final enum YUV_420_TYPE_NV12:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

.field public static final enum YUV_420_TYPE_NV21:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1095
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    const-string v1, "YUV_420_TYPE_NV21"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->YUV_420_TYPE_NV21:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    .line 1096
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    const-string v3, "YUV_420_TYPE_NV12"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->YUV_420_TYPE_NV12:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1094
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1098
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;
    .locals 1

    .line 1094
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;
    .locals 1

    .line 1094
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1099
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$YUV420Type;->value:I

    return p0
.end method
