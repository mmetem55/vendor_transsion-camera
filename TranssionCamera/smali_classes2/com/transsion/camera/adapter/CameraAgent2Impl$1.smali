.class Lcom/transsion/camera/adapter/CameraAgent2Impl$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 104
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$200(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    .line 108
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$400(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 118
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$500(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
