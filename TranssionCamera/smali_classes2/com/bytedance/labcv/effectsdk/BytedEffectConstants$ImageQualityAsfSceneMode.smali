.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQualityAsfSceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_EDIT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_GAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_PEOPLE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_RECORED_FRONT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

.field public static final enum ASF_SCENE_MODE_LIVE_RECORED_MAIN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1182
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const-string v1, "ASF_SCENE_MODE_LIVE_GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_GAME:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    .line 1183
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const-string v3, "ASF_SCENE_MODE_LIVE_PEOPLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_PEOPLE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    .line 1184
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const-string v5, "ASF_SCENE_MODE_LIVE_EDIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_EDIT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    .line 1185
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const-string v7, "ASF_SCENE_MODE_LIVE_RECORED_MAIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_RECORED_MAIN:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    .line 1186
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const-string v9, "ASF_SCENE_MODE_LIVE_RECORED_FRONT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->ASF_SCENE_MODE_LIVE_RECORED_FRONT:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1181
    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1192
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->mode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;
    .locals 1

    .line 1181
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;
    .locals 1

    .line 1181
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;

    return-object v0
.end method


# virtual methods
.method public getMode()I
    .locals 0

    .line 1196
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQualityAsfSceneMode;->mode:I

    return p0
.end method
