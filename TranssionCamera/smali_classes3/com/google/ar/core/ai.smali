.class final Lcom/google/ar/core/ai;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SharedCamera.java"


# static fields
.field public static final synthetic d:I


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    iput-object p2, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monCaptureSessionActive(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monCaptureSessionClosed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monCaptureSessionConfigureFailed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/aj;

    iget-object v0, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 3
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monCaptureSessionConfigured(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/aj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ar/core/aj;->b()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 5
    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$msetDummyListenerToAvoidImageBufferStarvation(Lcom/google/ar/core/SharedCamera;)V

    :cond_0
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ai;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ai;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monCaptureSessionReady(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
