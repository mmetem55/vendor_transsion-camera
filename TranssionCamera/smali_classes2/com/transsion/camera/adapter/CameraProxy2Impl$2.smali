.class Lcom/transsion/camera/adapter/CameraProxy2Impl$2;
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
.method public static synthetic $r8$lambda$AYjRpbW2KTdbGumlIOEyaZa9dXk(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->lambda$run$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$kD9g9iyInpgpc7pNPqSAR0NB6pc(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->lambda$run$1(Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 1543
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$902(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 1550
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method

.method private synthetic lambda$run$1(Z)V
    .locals 1

    .line 1555
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1102(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 1556
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1300(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1546
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$500(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] checkAeAfStableForCapturing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$902(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 1548
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    new-instance v4, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 1552
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1000(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1102(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    .line 1554
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$800(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    new-instance v3, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;)V

    invoke-direct {v1, v2, v3, v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAFStableScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    goto :goto_0

    .line 1559
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1102(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)Z

    :goto_0
    return-void
.end method
