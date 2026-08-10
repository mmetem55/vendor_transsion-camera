.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;
.super Ljava/lang/Object;
.source "DualVideoRecorder.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$3qqvWEnniwWJrIi_bBBu_4FjSjY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->lambda$onPrepared$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$OoRGYXQYsF8Wf8H3hrDEHuwHVhQ(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->lambda$onPrepared$0(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPrepared$0(Landroid/opengl/EGLContext;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPrepared$1()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;Landroid/opengl/EGLContext;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 1

    .line 332
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    check-cast p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 2

    .line 354
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStarted, encoder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    .locals 0

    .line 359
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onStopped"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
