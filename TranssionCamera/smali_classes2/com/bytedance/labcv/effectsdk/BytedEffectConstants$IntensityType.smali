.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntensityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum BeautySharp:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum BeautySmooth:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum BeautyWhite:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum FaceReshape:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum Filter:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum MakeUpBlusher:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

.field public static final enum MakeUpLip:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 118
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v1, "Filter"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->Filter:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 124
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v3, "BeautyWhite"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->BeautyWhite:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 129
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v5, "BeautySmooth"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->BeautySmooth:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 134
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v7, "FaceReshape"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->FaceReshape:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 139
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v9, "BeautySharp"

    const/4 v10, 0x4

    const/16 v11, 0x9

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->BeautySharp:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 144
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v11, "MakeUpLip"

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v9, v11, v12, v13}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->MakeUpLip:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    .line 149
    new-instance v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const-string v13, "MakeUpBlusher"

    const/4 v14, 0x6

    const/16 v15, 0x12

    invoke-direct {v11, v13, v14, v15}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->MakeUpBlusher:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 114
    sput-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;
    .locals 1

    .line 114
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;
    .locals 1

    .line 114
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 154
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$IntensityType;->id:I

    return p0
.end method
