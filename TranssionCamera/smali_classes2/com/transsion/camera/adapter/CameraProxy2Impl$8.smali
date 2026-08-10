.class Lcom/transsion/camera/adapter/CameraProxy2Impl$8;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 2582
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 2594
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2596
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2598
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onCaptureCompleted] camera proxy has release"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2602
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3100(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p2

    if-eq p2, p1, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 2603
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3100(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 2604
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4b

    cmp-long p2, v1, v3

    if-lez p2, :cond_3

    .line 2605
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureCompleted] onFirstSteadyFrame session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cur id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2606
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TranMemoryFlow] available memory when onFirstSteadyFrame :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2607
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->onFirstSteadyFrame(Ljava/lang/String;)V

    .line 2608
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3002(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    .line 2610
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 2611
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;->onPreview(Ljava/lang/String;I)V

    .line 2612
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3402(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    .line 2614
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStarted()V

    .line 2615
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Ljava/lang/String;)V

    .line 2616
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3500(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 2617
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3600(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 2618
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2300(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 2619
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3702(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 2626
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2627
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onCaptureFailed] session:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mSession:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$3200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 2587
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
