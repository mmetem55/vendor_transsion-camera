.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$300(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "whs onCaptureCompleted "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$300(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    return-void
.end method
