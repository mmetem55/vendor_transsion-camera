.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$7;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$7;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$7;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$800(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    return-void
.end method
