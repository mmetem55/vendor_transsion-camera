.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraProxy2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CSPictureCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .locals 0

    .line 2455
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2456
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    return-void
.end method

.method private onCaptureSequenceFinished()V
    .locals 3

    .line 2515
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2502(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 2518
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2520
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 2486
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 2507
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2508
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContinueShot [onCaptureFailed] session:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mReleased: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2509
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2510
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2

    .line 2498
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 2499
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinueShot [onCaptureSequenceAborted] session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2500
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->onCaptureSequenceFinished()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 2491
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 2492
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ContinueShot [onCaptureSequenceCompleted] session:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2493
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->onCaptureSequenceFinished()V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 2463
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2464
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2466
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "ContinueShot [onCaptureStarted] camera proxy has release"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2469
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ContinueShot [onCaptureStarted] session:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; frameNumber="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2470
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2471
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$2200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1700(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;Z)V

    .line 2473
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_2

    .line 2474
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted()V

    :cond_2
    return-void
.end method
