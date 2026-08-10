.class public Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;
.super Ljava/lang/Object;
.source "CameraDeviceCaptureInfo.java"


# instance fields
.field public final cameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

.field public final captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 11
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;->cameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    return-void
.end method
