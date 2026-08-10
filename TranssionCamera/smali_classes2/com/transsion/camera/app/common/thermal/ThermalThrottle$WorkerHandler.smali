.class Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;
.super Landroid/os/Handler;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/thermal/ThermalThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;Landroid/os/Looper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 96
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 101
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$100(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v2}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$200(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/thermal/PlatformThermal;->getTemperStatus(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$002(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;I)I

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 107
    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 108
    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    .line 109
    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 110
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldStatue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", onThermalThrottleChanged: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$400(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$400(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;->onThermalThrottleChanged(I)V

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$000(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_3

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$500(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    invoke-static {p0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->access$500(Lcom/transsion/camera/app/common/thermal/ThermalThrottle;)Lcom/transsion/camera/app/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
