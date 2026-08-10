.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum DOUBLE_CLICK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum LONG_PRESS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum PAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum ROTATE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum SCALE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

.field public static final enum TAP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1239
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->TAP:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1240
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v3, "PAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->PAN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1241
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v5, "ROTATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->ROTATE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1242
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v7, "SCALE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->SCALE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1243
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v9, "LONG_PRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->LONG_PRESS:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    .line 1244
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const-string v11, "DOUBLE_CLICK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->DOUBLE_CLICK:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 1238
    sput-object v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1249
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
    .locals 1

    .line 1238
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;
    .locals 1

    .line 1238
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 1253
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->code:I

    return p0
.end method
