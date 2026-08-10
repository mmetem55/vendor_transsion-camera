.class Lcom/transsion/camera/feature/mode/video/VideoMode$2;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_2

    .line 591
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoHDRDebugSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    .line 597
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->videoHDRSnapShot()V

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->snapshot(I)V

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$600(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$702(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z

    goto :goto_0

    .line 604
    :cond_2
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$800(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    .line 606
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method
