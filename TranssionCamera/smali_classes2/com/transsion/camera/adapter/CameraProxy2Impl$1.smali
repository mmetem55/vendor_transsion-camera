.class Lcom/transsion/camera/adapter/CameraProxy2Impl$1;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1534
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1537
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] checkAeStableForCapturing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 1539
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$600(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    .line 1538
    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    return-void
.end method
