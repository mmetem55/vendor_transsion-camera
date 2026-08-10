.class Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "SensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;Landroid/content/Context;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;

    .line 205
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;Landroid/content/Context;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;

    .line 209
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x2d

    .line 219
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    .line 220
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;

    invoke-static {v0}, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->access$700(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 221
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer$AlbumOrientationEventListener;->this$1:Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;

    invoke-static {p0, p1}, Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;->access$702(Lcom/bytedance/labcv/effectsdk/SensorHelper$Accelerometer;I)I

    :cond_1
    return-void
.end method
