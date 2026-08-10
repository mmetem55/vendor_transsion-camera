.class Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/SensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GravityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;


# direct methods
.method private constructor <init>(Lcom/bytedance/labcv/effectsdk/SensorHelper;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;->this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/labcv/effectsdk/SensorHelper;Lcom/bytedance/labcv/effectsdk/SensorHelper$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;-><init>(Lcom/bytedance/labcv/effectsdk/SensorHelper;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;->this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;

    invoke-static {v0}, Lcom/bytedance/labcv/effectsdk/SensorHelper;->access$400(Lcom/bytedance/labcv/effectsdk/SensorHelper;)Lcom/bytedance/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;->this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;

    invoke-static {v0, p1}, Lcom/bytedance/labcv/effectsdk/SensorHelper;->access$500(Lcom/bytedance/labcv/effectsdk/SensorHelper;Landroid/hardware/SensorEvent;)D

    move-result-wide v8

    .line 160
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/SensorHelper$GravityListener;->this$0:Lcom/bytedance/labcv/effectsdk/SensorHelper;

    invoke-static {p0}, Lcom/bytedance/labcv/effectsdk/SensorHelper;->access$400(Lcom/bytedance/labcv/effectsdk/SensorHelper;)Lcom/bytedance/labcv/effectsdk/SensorHelper$ISensorListener;

    move-result-object v1

    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 p1, 0x0

    aget p1, p0, p1

    float-to-double v2, p1

    const/4 p1, 0x1

    aget p1, p0, p1

    float-to-double v4, p1

    const/4 p1, 0x2

    aget p0, p0, p1

    float-to-double v6, p0

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/labcv/effectsdk/SensorHelper$ISensorListener;->onGravityChanged(DDDD)V

    return-void
.end method
