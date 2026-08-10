.class final Lcom/google/ar/core/ah;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SharedCamera.java"


# static fields
.field public static final synthetic d:I


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    iput-object p2, p0, Lcom/google/ar/core/ah;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/ah;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ah;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ah;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceClosed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ah;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ah;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceDisconnected(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ah;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ah;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mclose(Lcom/google/ar/core/SharedCamera;)V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ar/core/aj;->d(Landroid/hardware/camera2/CameraDevice;)V

    iget-object v0, p0, Lcom/google/ar/core/ah;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ar/core/ah;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v2, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/CameraDevice;)V

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 3
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceOpened(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/aj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mgetGpuSurfaceTexture(Lcom/google/ar/core/SharedCamera;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ar/core/aj;->g(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    .line 5
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/aj;

    move-result-object p1

    iget-object p0, p0, Lcom/google/ar/core/ah;->c:Lcom/google/ar/core/SharedCamera;

    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mgetGpuSurface(Lcom/google/ar/core/SharedCamera;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/ar/core/aj;->f(Landroid/view/Surface;)V

    return-void
.end method
