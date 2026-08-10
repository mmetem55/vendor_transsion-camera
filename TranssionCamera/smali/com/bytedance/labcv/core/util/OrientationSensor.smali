.class public Lcom/bytedance/labcv/core/util/OrientationSensor;
.super Ljava/lang/Object;
.source "OrientationSensor.java"


# static fields
.field private static mOrientation:I

.field private static mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 10
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 10
    sput p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return p0
.end method

.method public static getOrientation()Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;
    .locals 2

    .line 54
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 62
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_0:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_270:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 58
    :cond_1
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_180:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0

    .line 56
    :cond_2
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->CLOCKWISE_ROTATE_90:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;

    return-object v0
.end method

.method public static getSensorOrientation()I
    .locals 1

    .line 50
    sget v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 17
    sget-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/bytedance/labcv/core/util/OrientationSensor$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/bytedance/labcv/core/util/OrientationSensor$1;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 34
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 35
    sget-object p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 37
    sput-object p0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 42
    sget-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/bytedance/labcv/core/util/OrientationSensor;->mOrientation:I

    return-void
.end method
