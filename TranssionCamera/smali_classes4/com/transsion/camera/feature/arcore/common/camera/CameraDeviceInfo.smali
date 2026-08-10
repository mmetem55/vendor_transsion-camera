.class public final Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# instance fields
.field public final cameraId:Ljava/lang/String;

.field public final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final stateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->cameraId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 13
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->stateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    return-void
.end method
