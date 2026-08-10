.class public final enum Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
.super Ljava/lang/Enum;
.source "BefActionRecognitionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionRecognitionPoseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum LYING:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SIDELEFT:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SIDERIGHT:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum SITTING:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

.field public static final enum STAND:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 22
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v1, "STAND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->STAND:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 23
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v4, "LYING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->LYING:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 24
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v6, "SITTING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SITTING:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 25
    new-instance v6, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v8, "SIDELEFT"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SIDELEFT:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    .line 26
    new-instance v8, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    const-string v10, "SIDERIGHT"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->SIDERIGHT:Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    new-array v10, v11, [Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 21
    sput-object v10, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
    .locals 1

    .line 21
    const-class v0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;
    .locals 1

    .line 21
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;

    return-object v0
.end method
