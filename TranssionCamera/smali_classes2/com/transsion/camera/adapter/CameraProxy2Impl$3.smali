.class Lcom/transsion/camera/adapter/CameraProxy2Impl$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAECapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field final synthetic val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1819
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "[CapturePerformance] preCaptureCallback [onCaptureCompleted]"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1820
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 1827
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CapturePerformance] preCaptureCallback [onCaptureFailed] reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1828
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isPreviewStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1829
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    goto :goto_0

    .line 1831
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$3;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "preCaptureCallback [onCaptureFailed] preview is stopped."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
