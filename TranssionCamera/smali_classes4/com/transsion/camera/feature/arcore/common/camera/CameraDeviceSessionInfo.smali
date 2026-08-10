.class public Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;
.super Ljava/lang/Object;
.source "CameraDeviceSessionInfo.java"


# instance fields
.field public final callback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field public final listener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

.field public final outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public final templateType:I


# direct methods
.method public constructor <init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->templateType:I

    .line 17
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->outputs:Ljava/util/List;

    .line 18
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->callback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 19
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->listener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    return-void
.end method
