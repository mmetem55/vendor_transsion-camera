.class Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;
.super Ljava/lang/Object;
.source "MySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

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

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$000(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$202(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F

    goto :goto_0

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->access$102(Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;[F)[F

    .line 112
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
