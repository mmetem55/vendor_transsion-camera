.class Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;
.source "CameraProxy2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AFPreCaptureTimeOutCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
    .locals 1

    .line 1513
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    .line 1514
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V
    .locals 0

    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .locals 3

    .line 1525
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->shouldTriggerCallBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] trigger onAutoFocus focused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$TimeOutCallback;->removeTimeOutCallback()V

    .line 1528
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    :cond_0
    return-void
.end method

.method protected triggerTimeOutCallBack()V
    .locals 2

    .line 1519
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] triggerTimeOutCallBack AFPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1520
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;->mDelegate:Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    return-void
.end method
