.class Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
.source "CameraProxy2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AEPreCaptureTimeOutCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V
    .locals 1

    .line 1487
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    .line 1488
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V
    .locals 0

    .line 1482
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    return-void
.end method


# virtual methods
.method public onAEPreCaptureDone()V
    .locals 2

    .line 1499
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->shouldTriggerCallBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] onAEPreCaptureDone AEPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->removeTimeOutCallback()V

    .line 1502
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    :cond_0
    return-void
.end method

.method protected triggerTimeOutCallBack()V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] triggerTimeOutCallBack AEPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1494
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    return-void
.end method
