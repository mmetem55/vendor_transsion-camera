.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturePictureCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 0

    .line 2339
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2340
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    .line 2341
    iget-boolean p0, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1502(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 2342
    iget p0, p2, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    invoke-static {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1602(Lcom/transsion/camera/adapter/CameraProxy2Impl;I)I

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 2379
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2381
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraParameters;->algorithmMigrate()Z

    move-result p2

    .line 2383
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture [onCaptureCompleted] session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", algorithmMigrate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2389
    new-instance p1, Lcom/transsion/camera/adapter/CameraResults2Impl;

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2400(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 2390
    invoke-virtual {p1, p3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractResults(Landroid/hardware/camera2/CaptureResult;)V

    .line 2391
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_0

    .line 2392
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 2441
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2442
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture [onCaptureFailed] session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mReleased: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wasImageCaptured: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",fn: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2442
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2447
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 2372
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2300(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 2433
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2434
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capture [onCaptureSequenceAborted] session:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 2427
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 2428
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "capture [onCaptureSequenceCompleted] session:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 1

    .line 2349
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2350
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 2353
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CapturePerformance] [onCaptureStarted] camera proxy has release, mIsCancelCapture:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2356
    :cond_2
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CapturePerformance] [onCaptureStarted] session:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; frameNumber="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " , mNeedCaptureSound:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 2357
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; mUsePreAECaptureForSprd:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2356
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2359
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1900(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2360
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const-string p3, "camera_click.ogg"

    invoke-static {p1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2100(Lcom/transsion/camera/adapter/CameraProxy2Impl;Ljava/lang/String;)V

    .line 2362
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    if-eqz p1, :cond_4

    .line 2363
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;Z)V

    .line 2365
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_5

    .line 2366
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted()V

    :cond_5
    return-void
.end method
