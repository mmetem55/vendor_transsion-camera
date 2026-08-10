.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Camera capture session active."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;->onActive()V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$402(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1700(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 278
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Camera capture queue empty."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 283
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Camera capture session closed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;->onClosed()V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 291
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Failed to configure camera capture session."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 243
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Camera capture session configured."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1502(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;->onConfigured()V

    :cond_0
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Camera capture session ready."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;->onReady()V

    :cond_0
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 0

    .line 253
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Camera capture surface prepared."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
