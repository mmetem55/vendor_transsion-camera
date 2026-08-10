.class Lcom/transsion/camera/gsensor/StableMonitor$1;
.super Ljava/lang/Object;
.source "StableMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/gsensor/StableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/gsensor/StableMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/gsensor/StableMonitor;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-static {v0}, Lcom/transsion/camera/gsensor/StableMonitor;->access$000(Lcom/transsion/camera/gsensor/StableMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-static {v1}, Lcom/transsion/camera/gsensor/StableMonitor;->access$100(Lcom/transsion/camera/gsensor/StableMonitor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/gsensor/StableMonitor$1;->this$0:Lcom/transsion/camera/gsensor/StableMonitor;

    invoke-static {p0}, Lcom/transsion/camera/gsensor/StableMonitor;->access$100(Lcom/transsion/camera/gsensor/StableMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x65

    new-instance v2, Lcom/transsion/camera/gsensor/GyroData;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v2, p1}, Lcom/transsion/camera/gsensor/GyroData;-><init>([F)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
