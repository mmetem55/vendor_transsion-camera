.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 312
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureBufferLost: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 320
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;->onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    :cond_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureSequenceAborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
