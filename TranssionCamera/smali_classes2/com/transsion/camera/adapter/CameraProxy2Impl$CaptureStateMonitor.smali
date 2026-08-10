.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureStateMonitor"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field private mCaptureCount:I

.field private mNeedCallbackCount:I

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->wrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->onNextReady()V

    return-void
.end method

.method private captureFinished()V
    .locals 1

    .line 285
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    :cond_0
    return-void
.end method

.method private onNextReady()V
    .locals 1

    .line 292
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$200(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    return-void
.end method

.method private wrapCaptureCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 255
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 256
    iget p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mNeedCallbackCount:I

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 1

    .line 277
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->captureFinished()V

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_0

    .line 280
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    :cond_0
    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 268
    iget v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCaptureCount:I

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->captureFinished()V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_0

    .line 271
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed()V

    :cond_0
    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureStateMonitor;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_0

    .line 262
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted()V

    :cond_0
    return-void
.end method
