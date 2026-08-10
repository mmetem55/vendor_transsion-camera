.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

.field public static final enum BrandNodel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

.field public static final enum DetectModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

.field public static final enum OCRModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

.field public static final enum TrackModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1017
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    const-string v1, "DetectModel"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->DetectModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    .line 1021
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    const-string v4, "BrandNodel"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->BrandNodel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    .line 1025
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    const-string v6, "OCRModel"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->OCRModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    .line 1027
    new-instance v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    const-string v8, "TrackModel"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->TrackModel:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    new-array v8, v9, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 1013
    sput-object v8, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1030
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1031
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;
    .locals 1

    .line 1013
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;
    .locals 1

    .line 1013
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1035
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$CarModelType;->value:I

    return p0
.end method
