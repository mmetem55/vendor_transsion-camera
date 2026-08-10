.class public final synthetic Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public synthetic f$1:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p0, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/camera2/CameraDevice;

    sget v1, Lcom/google/ar/core/ah;->d:I

    .line 1
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method
